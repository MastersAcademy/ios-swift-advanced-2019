import Foundation

public struct Validation {
    public var isValidEmail: (String) -> Bool = {  email in
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: email)
    }
    
    public var isValidPassword: (String) -> Bool = { password in
        return password.count >= Current.const.validation.minPasswordLength
    }
}

