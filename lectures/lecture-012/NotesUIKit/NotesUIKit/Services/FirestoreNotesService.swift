import Foundation

public struct FirestoreNotesService {
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
    
    
}
