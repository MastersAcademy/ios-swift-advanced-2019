import KeychainAccess

public struct KeychainAccessService {
    var setStringForKey: (String, String) throws -> Void = {
        try Keychain.instance.set($0, key: $1)
    }
    
    var string: (String) throws -> String? = {
        try Keychain.instance.get($0)
    }
    
    var remove: (String) throws -> Void = {
        try Keychain.instance.remove($0)
    }
}

private extension Keychain {
    static let instance = Keychain()
}
