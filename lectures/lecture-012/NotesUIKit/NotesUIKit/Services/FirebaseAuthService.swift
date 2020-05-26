import FirebaseAuth

public struct FirebaseAuthService {
    public typealias User = (uid: String, email: String, getIDToken: (@escaping (Result<String, Error>) -> Void) -> Void)
    
    public typealias CreateUserParams = (withEmail: String, password: String, completion: (Result<User, Error>) -> Void)
    public var createUser: (CreateUserParams) -> Void = { params in
        Auth.auth().createUser(withEmail: params.withEmail, password: params.password) { result, error in
            params.completion(
                handleResult(result: result, error: error)
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
                handleResult(result: result, error: error)
                    .map {
                        Self.prepareFirebaseUser($0.user)
                }
            )
        }
    }
    
    public var signInWithToken: (String, @escaping (Result<User, Error>) -> Void) -> Void  = { token, completion in
        Auth.auth().signIn(withCustomToken: token) { (result, error) in
            completion(
                handleResult(result: result, error: error)
                    .map { Self.prepareFirebaseUser($0.user) }
            )
        }
    }
    
    public var user: () -> User? = {
        Auth.auth().currentUser.map { Self.prepareFirebaseUser($0) }
    }
    
    public var signOut = { fromThrowing(Auth.auth().signOut)() }
    
    private static func prepareFirebaseUser(_ firebaseUser: FirebaseAuth.User) -> User {
        let handler: (@escaping (Result<String, Error>) -> Void) -> Void = { callback in
            firebaseUser.getIDToken {
                callback(handleResult(result: $0, error: $1))
            }
        }
        return (firebaseUser.uid, firebaseUser.email ?? "", handler)
    }
}
 
