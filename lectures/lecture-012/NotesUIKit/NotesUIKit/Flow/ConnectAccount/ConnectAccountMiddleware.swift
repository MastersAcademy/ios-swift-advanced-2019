import SwiftyReduxSideEffects
import SwiftyReduxCore


public let connectAccountMiddleware: Middleware<AppState> = createSideEffectMiddleware { getState, dispatch in
    return { action in
        (action as? ConnectAccountEffect)?.handle(getState: getState, dispatch: dispatch)
    }
}

public enum ConnectAccountEffect: Action {
    case requestSignIn(email: String, password: String)
}

public extension ConnectAccountEffect {
    func handle(getState: GetState<AppState>, dispatch: @escaping Dispatch) {
        switch self {
        case let .requestSignIn(email, password):
            let params: FirebaseAuthService.SignInParams = (withEmail: email, password: password,
                                                            completion: { result in
                                                                switch result {
                                                                case .success:
                                                                    dispatch(NavigationAction.navigate(.connectAccountGoBackToNoteList))
                                                                case let .failure(error):
                                                                    echoError(error)
                                                                }
            })
            Current.firebase.auth.signIn(params)
        }
    }
}
