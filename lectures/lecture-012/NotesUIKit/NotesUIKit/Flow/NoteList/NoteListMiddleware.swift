import SwiftyReduxCore
import SwiftyReduxSideEffects

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
}

public extension NoteListEffect {
    static let firestoreNotes = FirestoreNotesService()
    
    func handle(getState: GetState<AppState>, dispatch: Dispatch) {
        switch self {
        case .createNote:
            let note = NoteListState.Note(id: Current.uuid(),
                                          content: "",
                                          updatedAt: Current.date()
                                          )
            switch Current.noteStorage.create(note.id, note.content, note.updatedAt) {
            case .success:
                dispatch(NoteDetailsAction.setNote(note.id))
                dispatch(NoteListAction.addNote(note))
                dispatch(NavigationAction.navigate(.noteDetails))
                
//                guard let user = Current.firebase.auth.user() else { return }
//                Current.firestoreNotes.createNote(userId: user.uid,
//                                                  note: note.toFirestore()) { result in
//                                                    echo(result)
//                }
            case let .failure(error): echoError(error)
            }
            
        case let .editNote(noteID):
            dispatch(NoteDetailsAction.setNote(noteID))
            dispatch(NavigationAction.navigate(.noteDetails))
        case let .updateNote(noteID, content):
            let date = Current.date()
            switch Current.noteStorage.update(noteID, content, date) {
            case .success:
                dispatch(NoteListAction.updateNote(id: noteID,
                                                   content: content,
                                                   date: date))
//                guard let user = Current.firebase.auth.user() else { return }
//                Current.firestoreNotes.updateNote(userId: user.uid,
//                                                  note: FirestoreNotesService.Note(id: noteID.uuidString,
//                                                                                   content: content,
//                                                                                   updatedAt: date
//                                                                                    .timeIntervalSince1970)) { echo($0) }
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
