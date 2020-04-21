import SwiftyReduxCore

// MARK: State
public struct LaunchState: Substate {
    public static var initial = Self()
    
    
}

// MARK: Action
public enum LaunchAction: Action {
    
}


// MARK: Reducer
extension LaunchState {
    public static let reducer = SubstateReducer<LaunchState, LaunchAction> { state, action in }
}
