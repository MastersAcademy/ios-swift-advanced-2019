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
        ServiceDocumentReference(Firestore.firestore().document($0))
    }
    
    public var collection: (String) -> ServiceCollection = {
        ServiceCollection(Firestore.firestore().collection($0))
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
        ServiceWriteBatch(Firestore.firestore().batch())
    }
    
    public static func documentSnapshotToService(queryDocSnapshot: QueryDocumentSnapshot)
        -> ServiceQueryDocumentSnapshot {
            let data = { queryDocSnapshot.data() }
            let metadata: () -> ServiceSnapshotMetadata = {
                return ServiceSnapshotMetadata(queryDocSnapshot.metadata)
            }
            let serviceDocumentSnapshot = ServiceQueryDocumentSnapshot(data: data,
                                                                       metadata: metadata)
            return serviceDocumentSnapshot
    }
    
    public var clearPersistence = {
        Firestore.firestore().clearPersistence(completion: $0)
    }
    
    public var terminate = {
        Firestore.firestore().terminate(completion: $0)
    }
}

public extension FirestoreService {
    struct ServiceDocumentReference {
        var setData: ([String: Any], @escaping (Error?) -> Void) -> Void
        var updateData: ([String: Any], @escaping (Error?) -> Void) -> Void
        var delete: (@escaping (Error?) -> Void) -> Void
        var getDocument: (FirestoreSource, @escaping (ServiceDocumentSnapshot?, Error?) -> Void) -> Void
        var path: () -> String
    }
    
    struct ServiceCollection {
        var getDocuments: (FirestoreSource, @escaping (ServiceQuerySnapshot?, Error?) -> Void) -> Void
        var addSnapshotListener:( @escaping (ServiceQuerySnapshot?, Error?) -> Void) -> ServiceListenerRegistration
        
    }
    
    struct ServiceQuerySnapshot {
        var documents: () -> [ServiceQueryDocumentSnapshot]
        var metadata: () -> ServiceSnapshotMetadata
        var documentChanges: () -> [ServiceDocumentChange]
    }
    
    struct ServiceQueryDocumentSnapshot {
        var data: () -> [String: Any]
        var metadata: () -> ServiceSnapshotMetadata
    }
    
    struct ServiceWriteBatch {
        public var setDataForDocument: ([String: Any], ServiceDocumentReference) -> Void
        public var commit: () -> Void
    }
    
    struct ServiceTransaction  {}
    
    struct ServiceSnapshotMetadata {
        var isFromCache: () -> Bool
        var hasPendingWrites: () -> Bool
    }
    
    struct ServiceDocumentSnapshot {
        var data: () -> [String: Any]?
        var metadata: () -> ServiceSnapshotMetadata
    }
    
    struct ServiceListenerRegistration {
        var remove: () -> Void
    }
    
    struct ServiceDocumentChange {
        var type: () -> ServiceDocumentChangeType
        var document: () -> ServiceDocumentSnapshot
    }
}

public extension FirestoreService.ServiceSnapshotMetadata {
    init(_ metadata: SnapshotMetadata) {
        isFromCache = { metadata.isFromCache }
        hasPendingWrites = { metadata.hasPendingWrites }
    }
}

public extension FirestoreService.ServiceDocumentChange {
    typealias ServiceDocumentChangeType = DocumentChangeType
    init(_ documentChange: DocumentChange) {
        type = { documentChange.type }
        document = { FirestoreService.ServiceDocumentSnapshot(documentChange.document) }
    }
}

public extension FirestoreService.ServiceCollection {
    init(_ collectionRef: CollectionReference) {
        getDocuments = { source, callback in
            collectionRef.getDocuments(source: source) { (querySnapshot, error) in
                callback(querySnapshot.map(FirestoreService.ServiceQuerySnapshot.init), error)
            }
        }
        
        addSnapshotListener = { callback in
            let registration =
                collectionRef.addSnapshotListener { (optQuerySnapshot, optError) in
                    callback(optQuerySnapshot.map(FirestoreService.ServiceQuerySnapshot.init), optError)
            }
            return FirestoreService.ServiceListenerRegistration(remove: registration.remove)
        }
    }
}

public extension FirestoreService.ServiceDocumentReference {
    private typealias Scope = FirestoreService
    init(_ documentRef: DocumentReference) {
        getDocument = { source, callback in
            documentRef.getDocument(source: source) { (optDocSnapshot, optError) in
                if let docSnapshot = optDocSnapshot {
                    let metadata = docSnapshot.metadata
                    let serviceMetadata = Scope.ServiceSnapshotMetadata(metadata)
                    let serviceDocSnapshot = Scope.ServiceDocumentSnapshot(data: docSnapshot.data,
                                                                           metadata: { serviceMetadata })
                    callback(serviceDocSnapshot, nil)
                } else if let error = optError {
                    callback(nil, error)
                }
            } }
        setData = documentRef.setData
        updateData = documentRef.updateData
        delete = documentRef.delete
        path = { documentRef.path }
    }
}

public extension FirestoreService.ServiceWriteBatch {
    init(_ writeBatch: WriteBatch) {
        setDataForDocument = {
            writeBatch.setData($0, forDocument: Firestore.firestore().document($1.path()))
        }
                                        
        commit = writeBatch.commit
    }
}

public extension FirestoreService.ServiceQuerySnapshot {
    init(_ querySnapshot: QuerySnapshot) {
        documents = { querySnapshot.documents.map(FirestoreService.documentSnapshotToService) }
        metadata = { FirestoreService.ServiceSnapshotMetadata(querySnapshot.metadata) }
        documentChanges = { querySnapshot.documentChanges.map(FirestoreService.ServiceDocumentChange.init) }
    }
}

public extension FirestoreService.ServiceDocumentSnapshot {
    init(_ documentSnapshot: DocumentSnapshot) {
        data = { documentSnapshot.data() }
        metadata = {
            return FirestoreService.ServiceSnapshotMetadata(documentSnapshot.metadata)
        }
    }
}


