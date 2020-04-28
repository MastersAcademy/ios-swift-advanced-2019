import SwiftyReduxCore

public struct AccountState: Substate {
    public static var initial = Self(user: nil)
    
    public var user: User?
}

public enum AccountAction: Action {
    case setUser(AccountState.User)
    case unsetUser
}

public extension AccountState {
    static var reducer = SubstateReducer<AccountState, AccountAction> { state, action in
        switch action {
        case let .setUser(user):
            state.user = user
        case .unsetUser:
            state.user = nil
        }
    }
}

public extension AccountState {
    struct User: Equatable, Codable {
        public var uid: String
        public var email: String
    }
}



