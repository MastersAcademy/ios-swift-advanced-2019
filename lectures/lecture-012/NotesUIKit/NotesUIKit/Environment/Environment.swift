import Foundation

var Current = Environment()

public struct Environment {
    public var date = DateProvider()
    public var uuid = UUIDProvider()
    public var locale = Locale.autoupdatingCurrent
    public var calendar = Calendar.autoupdatingCurrent
    public var timeZone = TimeZone.autoupdatingCurrent
    public func dateFormatter() -> DateFormatter {
        let formatter = DateFormatter()
        formatter.calendar = calendar
        formatter.timeZone = timeZone
        formatter.locale = locale
        return formatter
    }
    
    public var const = Const()
    public var noteStorage = NotesStorageProvider()
    public var logging = Logging()
    public var firebase = FirebaseProvider()
    public var exceptionHandler = ExceptionHandler()
    public var validation = Validation()
    public var firestoreNotes = FirestoreNotesService()
    public var keychain = KeychainAccessService()
    public var secureStorage = SecureStorageSevice()
}


import Firebase

public extension Environment {
    struct Const {
        public var notesFolderURL = Foundation.FileManager.default.urls(for: .documentDirectory,
                                                                        in: .userDomainMask)[0]
            .appendingPathComponent("notes", isDirectory: true)
        public var logging = (actions: true, errors: true)
        public var queue = (main: DispatchQueue.main, global: DispatchQueue.global(qos: .default))
        public var validation = (minPasswordLength: 8, maxPasswordLength: Int.max)
    }
    
    struct NotesStorageProvider {
        public var create = NotesStorage.default.create
        public var read = NotesStorage.default.read
        public var update = NotesStorage.default.update
        public var delete = NotesStorage.default.delete
        public var withID = NotesStorage.default.note
        public var createOrUpdateList = NotesStorage.default.createOrUpdate
    }
    
    struct Logging {
        static let dateFormatter: DateFormatter = {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "HH:mm:ss.SSS"
            return dateFormatter
        }()
        public enum Level: String {
            case info
            case debug
            case warning
            case error
        }
    
        public var log = { print($0, terminator: $1) }
    }
    
    struct FirebaseProvider {
        public var configure = FirebaseApp.configure as () -> Void
        public var firestore = FirestoreService()
        public var auth = FirebaseAuthService()
    }
    
    struct ExceptionHandler {
        public var setEnabled: (Bool) -> Void = { isEnabled in
            if isEnabled {
                    NSSetUncaughtExceptionHandler({ exception in
                      print("!!!!!!!!! CRASHLOG START !!!!!!!!!")
                      print("Exception name: " + exception.name.rawValue)
                      print("Exception reason: ", exception.reason ?? "nil")
                      print("Exception callStackSymbols: ", exception.callStackSymbols)
                      print("!!!!!!!!! CRASHLOG END !!!!!!!!!")
                })
            } else {
                NSSetUncaughtExceptionHandler(nil)
            }
        }
    }
    
    struct DateProvider {
        public var date = { Date() }
        public var timeIntervalSince1970 = { Date(timeIntervalSince1970: $0) }
    }
    
    struct UUIDProvider {
        public var uuid: () -> UUID = { UUID() }
        public var fromUUIDString  = UUID.init(uuidString:)
    }
}

public extension NotesStorage {
    static let `default` = NotesStorage(with: CoreDataStack(modelName: "DataModel"))
}

public func echo(level: Environment.Logging.Level = .debug, _ messages: Any ..., lineSeparator: String = "\n") {
    let time = Environment.Logging.dateFormatter.string(from: Date())
    let prefix = "\(time) [\(level.rawValue.uppercased())]"
    let result = "\(prefix) " + (messages.reduce("") { result, any in result + "\(any)" }) + lineSeparator
    Current.logging.log(result, "")
}


public func echoError(_ error: Any) {
    guard Current.const.logging.errors else { return }
    echo(level: .error, error)
}


