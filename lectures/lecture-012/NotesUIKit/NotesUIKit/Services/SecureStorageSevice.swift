public struct SecureStorageSevice {}

public extension SecureStorageSevice {
    enum Key: String {
        case firebaseAuthToken
    }
    
    func storeFirebaseAuthToken(_ token: String) -> Result<Void, Error> {
        return fromThrowing(Current.keychain.setStringForKey)(token, Key.firebaseAuthToken.rawValue)
    }
    
    func readFirebaseAuthToken() -> Result<String?, Error> {
        return fromThrowing(Current.keychain.string)(Key.firebaseAuthToken.rawValue)
    }
    
    func removeFirebaseAuthToken() -> Result<Void, Error> {
        return fromThrowing(Current.keychain.remove)(Key.firebaseAuthToken.rawValue)
    }
}


