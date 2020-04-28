import SwiftyReduxCore

public struct CreateAccountState: Substate {
    public static var initial = Self(email: "", password: "", confirmPassword: "", editedField: nil)
    
    public var email: String
    public var password: String
    public var confirmPassword: String
    public var editedField: Field?
}

public enum CreateAccountAction: Action {
    case setEditedField(CreateAccountState.Field?)
    case emailChanged(String)
    case passwordChanged(String)
    case confirmPasswordChanged(String)
    case reset
    
}

extension CreateAccountState {
    public static var reducer = SubstateReducer<CreateAccountState, CreateAccountAction> { state, action in
        switch action {
        case let .setEditedField(field):
            state.editedField = field
        case let .emailChanged(email):
            state.email = email
        case let.passwordChanged(password):
            state.password = password
        case let .confirmPasswordChanged(confirmPassword):
            state.confirmPassword = confirmPassword
        case .reset:
            state.email = ""
            state.password = ""
        }
    }
}

public extension CreateAccountState {
    enum Field: String, Codable {
        case email
        case password
        case confirmPassword
    }
}



