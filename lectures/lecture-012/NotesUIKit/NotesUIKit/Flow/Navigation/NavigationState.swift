import SwiftyReduxCore

// MARK: State
public struct NavigationState: Substate {
    public enum Transition: String, Codable {
        case nop
        case noteList
        case noteDetails
    }
    
    public static let initial = NavigationState(screen: .nop)
    public var screen: Transition = .nop
    
}

// MARK: Action
public enum NavigationAction: Action {
    case navigate(NavigationState.Transition)
}

// MARK: Reducer
public extension NavigationState {
    static let reducer = SubstateReducer<NavigationState, NavigationAction> { state, action in
        switch action {
        case let .navigate(screen): state.screen = screen
        }
    }
}
