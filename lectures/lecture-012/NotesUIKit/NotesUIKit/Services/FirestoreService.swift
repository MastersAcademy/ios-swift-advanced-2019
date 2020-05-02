import Firebase

public struct FirestoreService {
    public var setPersistenceEnabled: (Bool) -> Void = {
        let settings = FirestoreSettings()
        settings.isPersistenceEnabled = $0
        // Enable offline data persistence
        Firestore.firestore().settings = settings
    }
    
    public var setLoggingEnabled = Firestore.enableLogging
    
    public var document: (String) -> ServiceDocumentReference = {
        let documentRef = Firestore.firestore().document($0)
        return ServiceDocumentReference(setData: documentRef.setData,
                               updateData: documentRef.updateData,
                               delete: documentRef.delete)
    }
    
    public var collection: (String) -> ServiceCollection = {
        let collectionRef = Firestore.firestore().collection($0)
        let getDocuments: (FirestoreSource, @escaping (ServiceQuerySnapshot?, Error?) -> Void) -> Void
            = { source, callback in
            collectionRef.getDocuments(source: source) { (querySnapshot, error) in
                if let querySnapshot = querySnapshot {
                    let documentSnapshotToService: (QueryDocumentSnapshot) -> ServiceQueryDocumentSnapshot
                        = { queryDocSnapshot in
                            let data = { queryDocSnapshot.data() }
                            let metadata: () -> ServiceSnapshotMetadata = {
                                let metadata = queryDocSnapshot.metadata
                                let isFromCache = { metadata.isFromCache }
                                return ServiceSnapshotMetadata(isFromCache: isFromCache)
                            }
                            let serviceDocumentSnapshot = ServiceQueryDocumentSnapshot(data: data,
                                                                                       metadata: metadata)
                            return serviceDocumentSnapshot
                    }
                    let documents = { querySnapshot.documents.map(documentSnapshotToService) }
                    let  serviceQuerySnapshot = ServiceQuerySnapshot(documents: documents)
                    callback(serviceQuerySnapshot, nil)
                } else if let error = error {
                    callback(nil, error)
                }
            }
        }
    
        return ServiceCollection(getDocuments: getDocuments)
    }
    
    public var runTransaction: (@escaping (ServiceTransaction, NSErrorPointer) -> Any?,
                                @escaping (Any?, Error?) -> Void) -> Void = { updateTransaction, completion in
        Firestore.firestore().runTransaction({ (transaction, nsErrorPointer) -> Any? in
            let serviceTransaction = ServiceTransaction()
            return updateTransaction(serviceTransaction, nsErrorPointer)
        },
                                             completion: { any, error in
           completion(any, error)
        })
    }
    
    public var batch: () -> ServiceWriteBatch = {
        let firestore = Firestore.firestore()
        let batch = firestore.batch()
        let serviceBatch = ServiceWriteBatch(
            setDataForDocumet:  {
                   batch.setData($0, forDocument: firestore.document($1))
               },
                                            
            commit: batch.commit)
        return serviceBatch
    }
}

public extension FirestoreService {
    struct ServiceDocumentReference {
        var setData: ([String: Any], @escaping (Error?) -> Void) -> Void
        var updateData: ([String: Any], @escaping (Error?) -> Void) -> Void
        var delete: (@escaping (Error?) -> Void) -> Void
        var getDocument: (FirestoreSource, @escaping (ServiceDocumentSnapshot?, Error?) -> Void) -> Void
            = { source, callback in
                Firestore.firestore().document("").getDocument(source: source) { (optDocSnapshot, optError) in
                    if let docSnapshot = optDocSnapshot {
                        let metadata = docSnapshot.metadata
                        let serviceMetadata = ServiceSnapshotMetadata(isFromCache: { metadata.isFromCache })
                        let serviceDocSnapshot = ServiceDocumentSnapshot(data: docSnapshot.data,
                                                                         metadata: { serviceMetadata })
                        callback(serviceDocSnapshot, nil)
                    } else if let error = optError {
                        callback(nil, error)
                    }
            } }
    }
    
    struct ServiceCollection {
        var getDocuments: (FirestoreSource, @escaping (ServiceQuerySnapshot?, Error?) -> Void) -> Void
        
    }
    
    struct ServiceQuerySnapshot {
        var documents: () -> [ServiceQueryDocumentSnapshot]
    }
    
    struct ServiceQueryDocumentSnapshot {
        var data: () -> [String: Any]
        var metadata: () -> ServiceSnapshotMetadata
    }
    
    struct ServiceWriteBatch {
        public var setDataForDocumet: ([String: Any], String) -> Void
        public var commit: () -> Void
    }
    
    struct ServiceTransaction  {}
    
    struct ServiceSnapshotMetadata {
        var isFromCache: () -> Bool
    }
    
    struct ServiceDocumentSnapshot {
        var data: () -> [String: Any]?
        var metadata: () -> ServiceSnapshotMetadata
    }
}


