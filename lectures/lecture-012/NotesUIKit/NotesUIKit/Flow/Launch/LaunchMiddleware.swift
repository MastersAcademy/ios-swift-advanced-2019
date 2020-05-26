import SwiftyReduxCore
import SwiftyReduxSideEffects
import CasePaths

public let launchMiddleware: Middleware<AppState> = createSideEffectMiddleware { getState, dispatch in
    return { action in
        guard let effect = action as? LaunchEffect else { return }
        effect.handle(getState: getState, dispatch: dispatch)
    }
}

public enum LaunchEffect: Action {
    case setup
}

public extension LaunchEffect {
    func handle(getState: GetState<AppState>, dispatch: @escaping Dispatch) {
        switch self {
        case .setup:
            
            Current.exceptionHandler.setEnabled(true)
            // Firebase needs to be configured on main thread
            Current.const.queue.main.sync (execute: Current.firebase.configure)
            Current.firebase.firestore.setLoggingEnabled(false)
            Current.firebase.firestore.setPersistenceEnabled(true)
            
            // load all notes stored in local database
            let result = Current.noteStorage.read(nil)
            let storedNotes: [NotesStorage.Note]
            switch result {
            case let .success(notes):
                storedNotes = notes
            case let .failure(error):
                fatalError("\(error)")
            }
            
            dispatch(
                NoteListAction.addNotes(storedNotes.map {
                    NoteListState.Note(id: $0.id,
                                       content: $0.content,
                                       updatedAt: $0.updatedAt)
                })
            )

            // a) try to read token directly from SDK
            if let user = Current.firebase.auth.user() {
                Self.retrieveToken(from: user) { _ in
                     dispatch(AccountAction.setUser(AccountState.User(uid: user.uid, email: user.email)))
                    // subscribe to remote db changes for current user
                    dispatch(NoteListEffect.startListenRemoteNotes)
                    dispatch(NavigationAction.navigate(.noteList))
                }
            // b) user account is not connected - proceed with local database only
            } else {
                // clear firestore cache since it is not used for user that is not logged-in
                Current.firestoreNotes.clearStoredNotes { result in
                    if let error = extract(case: Result.failure, from: result) {
                        echoError(error)
                    }
                    dispatch(NavigationAction.navigate(.noteList))
                }
                
            }
        }
    }
    /*
    static func getDiffNotes(stored: [NotesStorage.Note], cloud: [FirestoreNotesService.Note])
        -> (stored: [NotesStorage.Note], cloud: [FirestoreNotesService.Note]) {
        // store notes in dictionaries by their ids
        var storedDict = Dictionary.init(uniqueKeysWithValues: stored.map { ($0.id.uuidString, $0 ) })
        var cloudDict = Dictionary.init(uniqueKeysWithValues: cloud.map { ($0.id, $0 ) })
        
        var newFromStored = [NotesStorage.Note]()
        var newFromCloud = [FirestoreNotesService.Note]()

        // determine which notes are to be synced from local db to cloud and vice versa
        for storedNote in stored {
            // check if note exists in cloud
            let noteId = storedNote.id.uuidString
            if let cloudNote = cloudDict[noteId] {
                // check if local note is newer than in cloud
                if storedNote.updatedAt.timeIntervalSince1970 > cloudNote.updatedAt {
                    // add to list that will be sinced to cloud
                    newFromStored.append(storedNote)
                    // remove note from both dictionaries to avoid
                    // extra work with cloud dictionary check
                    storedDict[noteId] = nil
                    cloudDict[noteId] = nil
                // check vice versa
                } else if storedNote.updatedAt.timeIntervalSince1970 < cloudNote.updatedAt {
                    newFromCloud.append(cloudNote)
                    storedDict[noteId] = nil
                    cloudDict[noteId] = nil
                } // else both dates are identical so no need for sync
                // note doesn't exist in cloud
            } else {
                // add to list that will be sinced to cloud
                newFromStored.append(storedNote)
                // remove note from stored dictionary
                storedDict[noteId] = nil
            }
        }
        
        // check for notes left to be synced from cloud to local db
        for cloudPair in cloudDict {
            if storedDict[cloudPair.key] == nil {
                newFromCloud.append(cloudPair.value)
            }
        }
        
        return (newFromStored, newFromCloud)
    }
    */
    static func retrieveToken(from user: FirebaseAuthService.User,
                                      callback: @escaping (Result<Void, Error>) -> Void) {
        user.getIDToken { result in
            switch result {
            case .success: callback(.success(()))
            case let .failure(error): echoError(error)
            }
        }
    }
    
}
