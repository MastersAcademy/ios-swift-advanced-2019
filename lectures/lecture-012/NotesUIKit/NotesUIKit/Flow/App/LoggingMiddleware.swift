import SwiftyReduxCore

public let loggingMiddleware: Middleware<AppState> = createFallThroughMiddleware { getState, dispatch in
    return { action in
        if Current.const.logging.actions {
            echo(level: .info, "action: \(type(of: action)).\(action)")
        }
    }
}
