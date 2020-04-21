import SwiftyReduxCore
import SwiftyReduxSideEffects

public let navigationMiddleware: Middleware<AppState> = createSideEffectMiddleware { getState, dispatch in
    return { action in
        guard let navigationAction = action as? NavigationAction else { return }
        switch navigationAction {
        case let .navigate(screen):
            guard case .nop = screen else {
                dispatch(NavigationAction.navigate(.nop))
                return
            }
        }
    }
}
