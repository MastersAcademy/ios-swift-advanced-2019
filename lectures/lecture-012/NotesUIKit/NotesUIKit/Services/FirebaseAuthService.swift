import FirebaseAuth

public struct FirebaseAuthService {
    public typealias User = (uid: String, email: String, getIDToken: (@escaping (Result<String, Error>) -> Void) -> Void)
    
    public typealias CreateUserParams = (withEmail: String, password: String, completion: (Result<User, Error>) -> Void)
    public var createUser: (CreateUserParams) -> Void = { params in
        
        Auth.auth().createUser(withEmail: params.withEmail, password: params.password) { result, error in
            params.completion(
                Self.handleResult(result: result, error: error)
                    .map {
                        Self.prepareFirebaseUser($0.user)
                }
            )
        }
    }
    
    public typealias SignInParams = (withEmail: String, password: String, completion: (Result<User, Error>) -> Void)
    
    public var signIn: (SignInParams) -> Void = { params in
        Auth.auth().signIn(withEmail: params.withEmail, password: params.password) { result, error in
            params.completion(
                Self.handleResult(result: result, error: error)
                    .map {
                        Self.prepareFirebaseUser($0.user)
                }
            )
        }
    }
    
    public typealias SignInWithTokenParams = (withCustomToken: String, completion: (Result<User, Error>) -> Void)
    public var signInWithToken: (SignInWithTokenParams) -> Void  = { params in
        Auth.auth().signIn(withCustomToken: params.withCustomToken) { (result, error) in
            params.completion(
                Self.handleResult(result: result, error: error)
                    .map { Self.prepareFirebaseUser($0.user) }
            )
        }
    }
    
    public var user: () -> User? = {
        Auth.auth().currentUser.map { Self.prepareFirebaseUser($0) }
    }
    
    private static func prepareFirebaseUser(_ firebaseUser: FirebaseAuth.User) -> User {
        let handler: (@escaping (Result<String, Error>) -> Void) -> Void = { callback in
            firebaseUser.getIDToken {
                callback(Self.handleResult(result: $0, error: $1))
            }
        }
        return (firebaseUser.uid, firebaseUser.email ?? "", handler)
    }
    
    private static func handleResult<Value>(result: Value?, error: Error?) -> Result<Value, Error> {
        switch (result, error) {
        case let (.some, .some(error)): return .failure(error)
        case (.none, .none): return .failure(NSError(domain: "FirebaseAuthServiceError", code: .min, userInfo: nil))
        case let (.some(value), .none):
            return .success(value)
        case let (.none, .some(error)):
            return .failure(error)
        }
    }
}
 
