import SwiftyReduxCore

public struct ConnectAccountState: Substate {
    public static var initial = Self(email: "", password: "", editedField: nil)
    
    public var email: String
    public var password: String
    public var editedField: Field?
}

public enum ConnectAccountAction: Action {
    case setEditedField(ConnectAccountState.Field?)
    case emailChanged(String)
    case passwordChanged(String)
    case reset
    
}

extension ConnectAccountState {
    public static var reducer = SubstateReducer<ConnectAccountState, ConnectAccountAction> { state, action in
        switch action {
        case let .setEditedField(field):
            state.editedField = field
        case let .emailChanged(email):
            state.email = email
        case let.passwordChanged(password):
            state.password = password
        case .reset:
            state.email = ""
            state.password = ""
        }
    }
}

public extension ConnectAccountState {
    enum Field: String, Codable {
        case email
        case password
    }
}



