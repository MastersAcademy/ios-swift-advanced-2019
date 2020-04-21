import class SwiftyReduxCore.Store

extension Store {
  public func observeOnMain(fingerPrint: String = "file:\(#file.split(separator: "/").last ?? "") line:\(#line) func:\(#function)",
                            with observer: @escaping (State) -> Void) -> Deallocator {
    return Deallocator(id: fingerPrint, subscribe(on: .main, observer: observer).dispose)
  }
}
