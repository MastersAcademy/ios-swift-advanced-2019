import Foundation

public struct FirestoreNotesService {
    public let listenerStorage = ListenerRemovalStorage()
    public func createNote(userId: String, note: Note,
                           completion: @escaping (Result<Void, ServiceError>) -> Void) {
        let doc = Current.firebase.firestore.document(noteDocumentPath(userId: userId, noteId: note.id))
        doc.setData(note.toData()) {
            completion(handleResult(result: (), error: $0).mapError(ServiceError.init))
        }
    }
    
    public func updateNote(userId: String, note: Note,
                           completion: @escaping (Result<Void, ServiceError>) -> Void) {
        let doc = Current.firebase.firestore.document(noteDocumentPath(userId: userId, noteId: note.id))
        doc.updateData(note.toData()) {
            completion(handleResult(result: (), error: $0).mapError(ServiceError.init))
        }
    }
    
    public func removeNote(userId: String, id: String, completion: @escaping (Result<Void, ServiceError>) -> Void) {
        let doc = Current.firebase.firestore.document(noteDocumentPath(userId: userId, noteId: id))
        doc.delete() {
            completion(handleResult(result: (), error: $0).mapError(ServiceError.init))
        }
    }
    
    public func noteDocumentPath(userId: String, noteId: String) -> String {
        return notesCollectionPath(userId: userId).appending("/\(noteId)")
    }
    
    public func notesCollectionPath(userId: String) -> String {
        return "users/\(userId)/notes"
    }
    
    public func loadAllNotes(cached: Bool, userId: String, completion: @escaping (Result<[Note], Error>) -> Void) {
        let coll = Current.firebase.firestore.collection(notesCollectionPath(userId: userId))
        coll.getDocuments(cached ? .cache: .server) { optQuerySnapshot, optError in
            let result: Result = handleResult(result: optQuerySnapshot, error: optError)
                .flatMap { querySnapshot in
                    .success(querySnapshot.documents().compactMap { docSnapshot in
                        Note.init(data: docSnapshot.data())
                    })
                }
            completion(result)
        }
    }
    
    public typealias NoteChange = FirestoreService.ServiceDocumentChange.ServiceDocumentChangeType
    
    public func addNotesChangedHandler(userId: String,
                                       handler: @escaping (Result<(notes: [(note: Note, change: NoteChange)], cache: Bool), Error>) -> Void) {
        
        func docChangeToNote(_ docChange: FirestoreService.ServiceDocumentChange)
            -> (note: Note, change: NoteChange)? {
            let note = docChange.document().data().flatMap(Note.init)
            return note.map { ($0, docChange.type()) }
        }
        
        let listener = Current.firebase.firestore.collection(notesCollectionPath(userId: userId))
            .addSnapshotListener { optSnapshot, optError in
                let result = handleResult(result: optSnapshot, error: optError)
                    .flatMap { snapshot in .success((notes: snapshot.documentChanges().compactMap(docChangeToNote),
                                                     cache: snapshot.metadata().isFromCache()))  }
                handler(result)
        }.remove
        listenerStorage.addListener(listener, forKey: .notesChangedHandler)
    }
    
    public func removeNotesChangedHandler() {
        listenerStorage.listener(forKey: .notesChangedHandler)?()
        listenerStorage.removeListener(forKey: .notesChangedHandler)
    }
    
    public func clearStoredNotes(completion: @escaping ( Result<(), Error>) -> Void) {
        Current.firebase.firestore.clearPersistence { error in
            if let error = error {
                completion(.failure(error))
            } else {
                completion(.success(()))
            }
        }
    }
    
    public func terminate(completion: @escaping ( Result<(), Error>) -> Void) {
        Current.firebase.firestore.terminate { error in
            if let error = error {
                completion(.failure(error))
            } else {
                completion(.success(()))
            }
        }
    }
}


public extension FirestoreNotesService {
    enum ServiceError: Error {
        case missingOrinsufficientPermissions
        case other(Int)
        
        init(error: Error) {
            let code = (error as NSError).code
            switch code {
            case 7:
                self = .missingOrinsufficientPermissions
            default:
                self = .other(code)
            }
        }
    }
}

public extension FirestoreNotesService {
    struct Note: Codable, Hashable {
        public let id: String
        public let content: String
        public let updatedAt: Double
    }
    
    typealias ChangeType = FirestoreService.ServiceDocumentChange
}

public extension FirestoreNotesService.Note {
    init?(data: [String: Any]) {
        guard let note = zip3(with: Self.init)(data[CodingKeys.id.stringValue] as? String,
                                               data[CodingKeys.content.stringValue] as? String,
                                               data[CodingKeys.updatedAt.stringValue] as? Double) else { return nil }
        self = note
    }
    
    func toData() -> [String: Any] {
        [
            CodingKeys.id.stringValue : id,
            CodingKeys.content.stringValue: content,
            CodingKeys.updatedAt.stringValue: updatedAt
        ]
    }
    
    func document(userId: String) -> FirestoreService.ServiceDocumentReference {
        Current.firebase.firestore.document(
            Current.firestoreNotes.noteDocumentPath(userId: userId, noteId: self.id)
        )
    }
}

public extension FirestoreNotesService {
    class ListenerRemovalStorage {
        public enum Key: String, Hashable {
            case notesChangedHandler
        }
        
        public typealias ListenerRemoval = () -> Void
        
        private var listeners = [Key: ListenerRemoval]()
        
        public func addListener(_ listener: @escaping ListenerRemoval, forKey key: Key) {
            assert(listeners[key] == nil)
            listeners[key] = listener
        }
        
        public func removeListener(forKey key: Key) {
            listeners[key] = nil
        }
        
        public func listener(forKey key: Key) -> ListenerRemoval? {
            return listeners[key]
        }
        
    }
}
