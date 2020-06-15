import SwiftyReduxCore
import SwiftyReduxSideEffects
import struct Foundation.UUID
import CasePaths

public let noteListMiddleware: Middleware<AppState> = createSideEffectMiddleware { getState, dispatch in
    return { action in
        (action as? NoteListEffect)?.handle(getState: getState, dispatch: dispatch)
    }
}

import struct Foundation.Date

public enum NoteListEffect: Action {
    case createNote
    case editNote(NoteListState.Note.ID)
    case updateNote(id: NoteListState.Note.ID, content: String)
    case removeNote(NoteListState.Note.ID)
    case noticeNoteDoneEditing(NoteListState.Note.ID)
    case startListenRemoteNotes
}

public extension NoteListEffect {
    static let firestoreNotes = FirestoreNotesService()
    
    func handle(getState: @escaping GetState<AppState>, dispatch: @escaping Dispatch) {
        switch self {
        case .createNote:
            let note = NoteListState.Note(id: Current.uuid.uuid(),
                                          content: "",
                                          updatedAt: Current.date.date()
                                          )
            switch Current.noteStorage.create(note.id, note.content, note.updatedAt) {
            case .success:
                dispatch(NoteDetailsAction.setNote(note.id))
                dispatch(NoteListAction.addNote(note))
                dispatch(NavigationAction.navigate(.noteDetails))
            case let .failure(error): echoError(error)
            }
            
        case let .editNote(noteID):
            dispatch(NoteDetailsAction.setNote(noteID))
            dispatch(NavigationAction.navigate(.noteDetails))
        case let .updateNote(noteID, content):
            let date = Current.date.date()
            switch Current.noteStorage.update(noteID, content, date) {
            case .success:
                dispatch(NoteListAction.updateNote(id: noteID,
                                                   content: content,
                                                   date: date))
            case let .failure(error):
                echoError(error)
            }
                
        case let .removeNote(noteID):
            switch Current.noteStorage.delete(noteID) {
            case .success:
                dispatch(NoteListAction.removeNote(noteID))
                guard let user = Current.firebase.auth.user() else { return }
                Current.firestoreNotes.removeNote(userId: user.uid,
                                                  id: noteID.uuidString) { result in
            }
            case let .failure(error): echoError(error)
            }
        case let .noticeNoteDoneEditing(noteID):
            guard let state = getState() else { return }
            guard let userId = state.account.user?.uid else { return }
            guard let note = state.noteList.notes[noteID] else { return }
            Current.firestoreNotes.createNote(userId: userId,
                                              note: note.toFirestore()) { result in  echo(result) }

        case .startListenRemoteNotes:
            self.startListenRemoteNotesChanged(getState: getState, dispatch: dispatch)
        }
    }
    
    func startListenRemoteNotesChanged(getState: @escaping GetState<AppState>, dispatch: @escaping Dispatch) {
        guard let userId = getState()?.account.user?.uid else { return }
        Current.firestoreNotes.addNotesChangedHandler(userId: userId) { result in
            switch result {
            case let .success(pair):
                let shouldSyncFromCache = getState()?.noteList.shouldSyncFromCache ?? false
                // allow sync with cache once via shouldSyncFromCache, otherwise sync will happen
                // only via real updates from cloud
                if shouldSyncFromCache {
                    // turn off sync from cache to avoid extra updates of state
                    dispatch(NoteListAction.shouldSyncFromCache(false))
                }
                
                // sync notes from cloud to local db
                if shouldSyncFromCache || !pair.cache {
                    for (note, change) in pair.notes {
                        self.updateStoredNote(note: note, change: change, dispatch: dispatch, getState: getState)
                    }
                }
            case let .failure(error):
                echoError(error)
            }
        }
    }
    
    func updateStoredNote(note: FirestoreNotesService.Note, change: FirestoreNotesService.NoteChange,
                          dispatch: Dispatch, getState: @escaping GetState<AppState>) {
        guard let uuid = Current.uuid.fromUUIDString(note.id) else { return }
        let storedResult = Current.noteStorage.withID(uuid)
        let storedNote: NotesStorage.Note? = try? storedResult.get()
        
        switch change {
        case .added, .modified:
            switch storedNote {
            case var .some(noteToUpdate):
                // update only if changes from cloud are newer than current
                guard noteToUpdate.updatedAt.timeIntervalSince1970 < note.updatedAt else { return }
                noteToUpdate.content = note.content
                noteToUpdate.updatedAt = Current.date.timeIntervalSince1970(note.updatedAt)
                if let error =
                extract(case: Result.failure,
                        from: Current.noteStorage.update(noteToUpdate.id,
                                                         noteToUpdate.content,
                                                         noteToUpdate.updatedAt)
                    ) {
                    echoError(error)
                } else {
                    if let stateNote = NoteListState.Note(with: note) {
                        if change == .added {
                            dispatch(NoteListAction.addNote(stateNote))
                        } else if change == .modified {
                            dispatch(NoteListAction.updateNote(id: stateNote.id,
                                                               content: stateNote.content,
                                                               date: stateNote.updatedAt))
                        }
                    } else {
                        echoError("NoteListState.Note.init(with:) failure")
                    }
                }
                    
            case .none:
                if let error = extract(case: Result.failure,
                                       from: Current.noteStorage
                                        .create(uuid, note.content, Current.date.timeIntervalSince1970(note.updatedAt))) {
                    echoError(error)
                } else {
                    if let stateNote = NoteListState.Note(with: note) {
                        dispatch(NoteListAction.addNote(stateNote))
                    } else {
                        echoError("NoteListState.Note.init(with:) failure")
                    }
                }
            }
        case .removed:
            switch storedNote {
            case let .some(note):
                if let error = extract(case: Result.failure, from: Current.noteStorage.delete(uuid)) {
                    echo(error)
                } else {
                    dispatch(NoteListAction.removeNote(note.id))
                }
            case .none: break
            }
        }
        
    }
}

public extension NoteListState.Note {
    func toFirestore() -> FirestoreNotesService.Note {
        return FirestoreNotesService.Note(id: id.uuidString,
                                          content: content,
                                          updatedAt: updatedAt.timeIntervalSince1970)
    }
}

public extension NoteListState.Note {
    init?(with firestoreNote: FirestoreNotesService.Note) {
        guard let id = Current.uuid.fromUUIDString(firestoreNote.id) else { return nil }
        self.id = id
        content = firestoreNote.content
        self.updatedAt = Current.date.timeIntervalSince1970(firestoreNote.updatedAt)
    }
}
