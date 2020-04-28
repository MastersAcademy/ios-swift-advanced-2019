import Firebase

public struct FirestoreService {
    public var removeDataInCollectionInDocumentWithCompletion = { (data: [String: Any], collectionPath: String,
        documentPath: String, completion: @escaping (Error?) -> Void) in
            }
    
    public var setPersistenceEnabled: (Bool) -> Void = {
        let settings = FirestoreSettings()
        settings.isPersistenceEnabled = $0
        // Enable offline data persistence
        Firestore.firestore().settings = settings
    }
    
    public var setLoggingEnabled = Firestore.enableLogging
    // path: collection/document/collection/document...
    public var setData = { (path: String, data: [String: Any], completion: @escaping (Error?) -> Void) in
        Firestore.firestore().document(path).setData(data, completion: completion)
    }
    
    public var delete = {
        Firestore.firestore().document($0).delete(completion: $1)
    }
    
    public var updateData = { (path: String, data: [String: Any], completion: @escaping (Error?) -> Void) in
        Firestore.firestore().document(path).updateData(data, completion: completion) }
}

