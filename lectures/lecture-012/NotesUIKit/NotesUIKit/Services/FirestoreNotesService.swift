import Foundation

public struct FirestoreNotesService {
    public func createNote(userId: String, id: UUID, content: String, updatedAt: Date,
                           completion: @escaping (Result<Void, ServiceError>) -> Void) {
        
        let data: [String: Any] = ["id": id.uuidString,
                                   "content": content,
                                   "updatedAt": updatedAt.timeIntervalSince1970]
        Current.firebase.firestore.setData(notePath(userId: userId, noteId: id), data) {
            guard let error = $0.map(ServiceError.init) else {
                completion(.success(()))
                return
            }
            completion(.failure(error))
        }
    }
    
    public func updateNote(userId: String, id: UUID, content: String, updatedAt: Date,
                           completion: @escaping (Result<Void, ServiceError>) -> Void) {
        
        let data: [String: Any] = ["id": id.uuidString,
                                   "content": content,
                                   "updatedAt": updatedAt.timeIntervalSince1970]
        Current.firebase.firestore.updateData(notePath(userId: userId, noteId: id), data) {
            guard let error = $0.map(ServiceError.init) else {
                completion(.success(()))
                return
            }
            completion(.failure(error))
        }
    }
    
    public func removeNote(userId: String, id: UUID, completion: @escaping (Result<Void, ServiceError>) -> Void) {
        Current.firebase.firestore.delete(notePath(userId: userId, noteId: id)) {
            guard let error = $0.map(ServiceError.init) else {
                completion(.success(()))
                return
            }
            completion(.failure(error))
        }
    }
    
    public func notePath(userId: String, noteId: UUID) -> String {
        return "users/\(userId)/notes/\(noteId.uuidString)"
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
