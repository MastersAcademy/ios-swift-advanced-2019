import protocol SwiftyReduxCore.Action

public struct Dispatcher: Equatable {
  public let id: String
  private let _dispatch: (Action) -> Void
  
  public init(id: String, _ dispatch: @escaping (Action) -> Void) {
    self.id = id
    _dispatch = dispatch
  }
  
  public func dispatch(_ action: Action) -> Void {
    _dispatch(action)
  }
  
  public static func == (lhs: Dispatcher, rhs: Dispatcher) -> Bool {
    return lhs.id == rhs.id
  }
}
