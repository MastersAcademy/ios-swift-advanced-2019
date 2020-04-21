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
