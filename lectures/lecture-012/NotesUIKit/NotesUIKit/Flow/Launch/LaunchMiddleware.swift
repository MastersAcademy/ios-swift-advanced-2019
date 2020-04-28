import SwiftyReduxCore
import SwiftyReduxSideEffects

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
    func handle(getState: GetState<AppState>, dispatch: Dispatch) {
        switch self {
        case .setup:
            
            Current.exceptionHandler.setEnabled(true)
            // Firebase needs to be configured on main thread
            Current.const.queue.main.sync (execute: Current.firebase.configure)
            Current.firebase.firestore.setLoggingEnabled(true)
            Current.firebase.firestore.setPersistenceEnabled(true)
            
            if let user = Current.firebase.auth.user() {
                dispatch(AccountAction.setUser(AccountState.User(uid: user.uid, email: user.email)))
            }
            
    
            
            let result = Current.noteStorage.read(nil)
            
            switch result {
            case let .success(storedNotes):
                dispatch(NoteListAction.addNotes(storedNotes.map(NoteListState.Note.init)))
            case let .failure(error):
                fatalError("\(error)")
            }
            
            
            dispatch(NavigationAction.navigate(.noteList))
            
            
            break
        }
    }
}
