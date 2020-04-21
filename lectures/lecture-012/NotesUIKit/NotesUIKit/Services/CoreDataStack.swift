import CoreData

public class CoreDataStack {
    private let modelName: String

    lazy private var container: NSPersistentContainer = {
        let container = NSPersistentContainer(name: modelName)
        container.loadPersistentStores { (storeDesc, error) in
            if let error = error {
                fatalError("\(error)")
            }
        }
        return container
    }()
    
    lazy public var managedContext: NSManagedObjectContext = {
        return self.container.newBackgroundContext()
    }()
    
    public init(modelName: String) {
        self.modelName = modelName
    }
    
    public func saveContext() -> Result<Void, Error> {
        guard managedContext.hasChanges else { return .success(()) }
        do {
            try managedContext.save()
            return .success(())
        } catch {
            return .failure(error)
        }
    }
}
