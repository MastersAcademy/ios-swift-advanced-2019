import Foundation
import CoreData

public struct NotesStorage {
    public enum NotesStorageError: Error {
        case notFound(UUID)
        case stack(Error)
    }
    
    private let stack: CoreDataStack

    public init(with stack: CoreDataStack) {
        self.stack = stack
    }
    
    public func create(id: UUID, content: String, updatedAt: Date) -> Result<Void, Error> {
        let note = StoredNote(context: stack.managedContext)
        note.id = id
        note.updatedAt = updatedAt
        note.content = content
        return stack.saveContext().flatMapError { .failure(NotesStorageError.stack($0)) }
    }
    
    public func read(in range: Range<Int>? = nil) -> Result<[Note], Error> {
        let fetch: NSFetchRequest<StoredNote> = StoredNote.fetchRequest()
        fetch.sortDescriptors = [NSSortDescriptor(keyPath:\StoredNote.updatedAt, ascending: true)]
        do {
            let results = try stack.managedContext.fetch(fetch)
            
            if let range = range {
                return .success(results[range].compactMap {
                    zip3(with: Note.init)($0.id, $0.content, $0.updatedAt)
                })
            } else {
                return .success(results.compactMap {
                    zip3(with: Note.init)($0.id, $0.content, $0.updatedAt)
                })
            }
        } catch {
            return .failure(NotesStorageError.stack(error))
        }
    }
            
    public func update(id: UUID, content: String, updatedAt: Date) -> Result<Void, Error> {
        return note(with: id).flatMap { note in
            note.id = id
            note.updatedAt = updatedAt
            note.content = content
            return stack.saveContext()
        }
    }
            
    public func delete(id: UUID) -> Result<Void, Error> {
        return note(with: id).flatMap { note in
            self.stack.managedContext.delete(note)
            return self.stack.saveContext()
        }
    }
    
    private func note(with id: UUID) -> Result<StoredNote, Error> {
        let fetch: NSFetchRequest<StoredNote> = StoredNote.fetchRequest()
        let predicate = NSPredicate(format: "%K == %@", argumentArray: [#keyPath(StoredNote.id), id])
        fetch.predicate = predicate
        do {
            let results = try stack.managedContext.fetch(fetch)
            guard let note = results.first else { return .failure(NotesStorageError.notFound(id)) }
            return .success(note)
        } catch {
            return .failure(NotesStorageError.stack(error))
        }
    }
}

public extension NotesStorage {
    struct Note: Hashable {
        public let id: UUID
        public let content: String
        public let updatedAt: Date
    }
}
