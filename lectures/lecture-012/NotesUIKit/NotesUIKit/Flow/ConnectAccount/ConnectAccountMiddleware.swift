import SwiftyReduxSideEffects
import SwiftyReduxCore
import CasePaths


public let connectAccountMiddleware: Middleware<AppState> = createSideEffectMiddleware { getState, dispatch in
    return { action in
        (action as? ConnectAccountEffect)?.handle(getState: getState, dispatch: dispatch)
    }
}

public enum ConnectAccountEffect: Action {
    case requestSignIn(email: String, password: String)
    case requestSignOut
}

public extension ConnectAccountEffect {
    func handle(getState: GetState<AppState>, dispatch: @escaping Dispatch) {
        switch self {
        case let .requestSignIn(email, password):
            let params: FirebaseAuthService.SignInParams = (withEmail: email, password: password,
                                                            completion: { result in
                                                                switch result {
                                                                case let .success(user):
                                                                    
                                                                    
                                                    
                                                                    let stateUser: AccountState.User = .init(uid: user.uid, email: user.email)
                                                                    
                                                                    dispatch(AccountAction.setUser(stateUser))
                                                                    // Allow sync from cache after sign in.
                                                                    // It will be then turned off when first
                                                                    // update kicks in
                                                                    //dispatch(NoteListAction.shouldSyncFromCache(true))
                                                                    //dispatch(NoteListEffect.startListenRemoteNotes)
                                                                    
                                                                    self.firstTimeSync(userId: user.uid,
                                                                                       dispatch: dispatch) { result in
                                                                        switch result {
                                                                        case .success: dispatch(NavigationAction.navigate(.connectAccountGoBackToNoteList))
                                                                        case let .failure(error): echoError(error)
                                                                        }
                                                                    }
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
                                                                case let .failure(error):
                                                                    // TODO: handle errors in UI
                                                                    echoError(error)
                                                                }
            })
            Current.firebase.auth.signIn(params)
        case .requestSignOut:
            if let error = extract(case: Result.failure,
                                   from:  Current.firebase.auth.signOut()) {
                echoError(error)
            } else {
                Current.firestoreNotes.removeNotesChangedHandler()
                dispatch(AccountAction.unsetUser)
                Current.firestoreNotes.clearStoredNotes { _ in }
                    
            }
            
        }
        
    }
    
    func firstTimeSync(userId: String, dispatch: @escaping Dispatch, completion: @escaping (Result<Void, Error>) -> Void) {
        Current.firestoreNotes.addNotesChangedHandler(userId: userId) { result in
            Current.firestoreNotes.removeNotesChangedHandler()
            let cloudChanges: [(note: FirestoreNotesService.Note, change: FirestoreNotesService.NoteChange)]
            let cloudCache: Bool
            switch result {
            case let .success(notes, cache):
                cloudChanges = notes
                cloudCache = cache
            case let .failure(error):
                echoError(error)
                completion(.failure(error))
                return
            }
            
            //guard !cloudCache else { return }
            
            let storedNotesResult = Current.noteStorage.read(nil)
            
            let storedNotes: [NotesStorage.Note]
            
            switch storedNotesResult {
            case let .success(notes):
                storedNotes = notes
            case let .failure(error):
                echoError(error)
                completion(.failure(error))
                return
            }
            
            var storedIds: [String: NotesStorage.Note] =
                .init(uniqueKeysWithValues: storedNotes.map { ($0.id.uuidString, $0) })
            
            typealias ChangePair = (note: FirestoreNotesService.Note, change: FirestoreNotesService.NoteChange)
            
            var cloudIds: [String: ChangePair] =
                .init(uniqueKeysWithValues: cloudChanges.map { ($0.note.id, $0) })
            
            var storedAddToCloud = [NotesStorage.Note]()
            var cloudAddToStored = [FirestoreNotesService.Note]()
            var cloudRemoveFromStored = [FirestoreNotesService.Note]()
            
            for storedNote in storedNotes {
                // note with same id exists on cloud
                if let cloudNote = cloudIds[storedNote.id.uuidString] {
                    // if note on cloud is newer than in local db add it sync lists
                    if cloudNote.note.updatedAt > storedNote.updatedAt.timeIntervalSince1970 {
                        switch cloudNote.change {
                        case .added, .modified:
                            cloudAddToStored.append(cloudNote.note)
                        case .removed:
                            cloudRemoveFromStored.append(cloudNote.note)
                        }
                        storedIds[cloudNote.note.id] = nil
                        cloudIds[cloudNote.note.id] = nil

                        // if note in local db is newer than on cloud add it sync lists
                    } else if cloudNote.note.updatedAt < storedNote.updatedAt.timeIntervalSince1970 {
                        // note with newer updates overrides one with older
                        storedAddToCloud.append(storedNote)
                        storedIds[cloudNote.note.id] = nil
                        cloudIds[cloudNote.note.id] = nil
                    }
                    // note in local db doesn't exist on cloud
                } else {
                    storedAddToCloud.append(storedNote)
                    storedIds[storedNote.id.uuidString] = nil
                }
            }
            // add all notes left from cloud to local db sync list
            for (_, cloudNote) in cloudIds where cloudNote.change != .removed {
                cloudAddToStored.append(cloudNote.note)
            }
            
            let batch = Current.firebase.firestore.batch()
            for stored in storedAddToCloud {
                let cloud = FirestoreNotesService.Note(with: stored)
                batch.setDataForDocument(cloud.toData(), cloud.document(userId: userId))
            }
            
            let result = Current.noteStorage.createOrUpdateList(
                cloudAddToStored.compactMap(NotesStorage.Note.init)
            )
            
            switch result {
            case .success:
                batch.commit()
                
                var list = [NoteListState.Note]()
                
                for note in cloudAddToStored {
                    guard let stateNote = NoteListState.Note(with: note) else { continue }
                    list.append(stateNote)
                }
                
                for note in storedAddToCloud {
                    list.append(NoteListState.Note(with: note))
                }
                dispatch(NoteListAction.addNotes(list))
                dispatch(NoteListAction.shouldSyncFromCache(true))
                dispatch(NoteListEffect.startListenRemoteNotes)
                
                completion(.success(()))
            case let .failure(error):
                echoError(error)
                completion(.failure(error))
            }
        }
    }
}

public extension FirestoreNotesService.Note {
    init(with stored: NotesStorage.Note) {
        self.id = stored.id.uuidString
        self.content = stored.content
        self.updatedAt = stored.updatedAt.timeIntervalSince1970
    }
}

public extension NotesStorage.Note {
    init?(with cloud: FirestoreNotesService.Note) {
        guard let id = Current.uuid.fromUUIDString(cloud.id) else { return nil }
        self.id = id
        content = cloud.content
        updatedAt = Current.date.timeIntervalSince1970(cloud.updatedAt)
    }
}

public extension NoteListState.Note {
    init(with note: NotesStorage.Note) {
        self.id = note.id
        self.content = note.content
        self.updatedAt = note.updatedAt
    }
}

