import SwiftyReduxSideEffects
import SwiftyReduxCore


public let createAccountMiddleware: Middleware<AppState> = createSideEffectMiddleware { getState, dispatch in
    return { action in
        (action as? CreateAccountEffect)?.handle(getState: getState, dispatch: dispatch)
    }
}

public enum CreateAccountEffect: Action {
    case requestRegister(email: String, password: String)
}

public extension CreateAccountEffect {
    func handle(getState: GetState<AppState>, dispatch: @escaping Dispatch) {
        switch self {
        case let .requestRegister(email, password):
            let completion: (Result<FirebaseAuthService.User, Error>) -> Void = { result in
                switch result {
                case let .success(user):
                    user.getIDToken {
                        let storageResult = $0.flatMap(Current.secureStorage.storeFirebaseAuthToken)
                        if case let .failure(error) =
                            storageResult {
                            echoError(error)
                        }
                        dispatch(NavigationAction
                            .navigate(.createAccountGoBackToNoteList))
                    }
                case let .failure(error):
                    echoError(error)
                }
            }
            
            let params: FirebaseAuthService.CreateUserParams = (withEmail: email,
                                                                password: password,
                                                                completion: completion)
            Current.firebase.auth.createUser(params)
        }
    }
}
