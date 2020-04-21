public struct MainQueueObservable<State>: Equatable {
  public static func == (lhs: MainQueueObservable, rhs: MainQueueObservable) -> Bool {
    return lhs.id == rhs.id
  }
  
  public let id: String
  private let _observe: (String, @escaping (State) -> Void) -> Deallocator
  
  public init(id: String = "", _ observe: @escaping (String, @escaping (State) -> Void) -> Deallocator) {
    self.id = id
    _observe = observe
  }
  
  public func observe(fingerPrint: String = "",
    _ closure: @escaping (State) -> Void) -> Deallocator {
    return _observe(fingerPrint, closure)
  }
}
