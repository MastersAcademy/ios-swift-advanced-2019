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
    
    public func read(in range: Range<Int>? = nil) -> Result<[(id: UUID, content: String, updatedAt: Date)], Error> {
        let fetch: NSFetchRequest<StoredNote> = StoredNote.fetchRequest()
        fetch.sortDescriptors = [NSSortDescriptor(keyPath:\StoredNote.updatedAt, ascending: true)]
        do {
            let results = try stack.managedContext.fetch(fetch)
            
            if let range = range {
                return .success(results[range].compactMap {
                    zip3($0.id, $0.content, $0.updatedAt)
                })
            } else {
                return .success(results.compactMap {
                    zip3($0.id, $0.content, $0.updatedAt)
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

func zip2<A, B>(_ a: A?, _ b: B?) -> (A, B)? {
    guard let a = a, let b = b else { return nil }
    return (a, b)
}

func zip3<A, B, C>(_ a: A?, _ b: B?, _ c: C?) -> (A, B, C)? {
    return zip2(a, zip2(b, c))
        .map { a, bc in (a, bc.0, bc.1) }
}

