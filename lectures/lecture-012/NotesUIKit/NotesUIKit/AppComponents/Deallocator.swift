public class Deallocator: Equatable {
  public static func == (lhs: Deallocator, rhs: Deallocator) -> Bool {
    return lhs === rhs
  }
  
  public let id: String
  private let disposable: () -> Void
  
  public init(id: String = "", _ disposable: @escaping () -> Void) {
    self.id = id
    self.disposable = disposable
  }
  
  deinit {
    disposable()
  }
}

public extension Deallocator {
  static var nop: () -> Deallocator = { Deallocator {} }
}
