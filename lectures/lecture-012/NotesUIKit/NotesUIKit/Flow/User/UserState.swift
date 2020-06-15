import SwiftyReduxCore

public struct AccountState: Substate {
    public static var initial = Self()
}

public enum UserAction: Action {
    
}

public extension AccountState {
    static var reducer = SubstateReducer<AccountState, UserAction> { state, action in
        
    }
}


