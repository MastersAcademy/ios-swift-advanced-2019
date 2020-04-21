public protocol Presentable {
    associatedtype State
    associatedtype Props
    associatedtype Router
    var router: Router { get }
    var dispatcher: Dispatcher { get }
    var render: (Props) -> Void { get }
    func present(state: State) -> Void
    func stateToProps(_ state: State) -> Props
}

public extension Presentable {
    func present(state: State) {
        render(stateToProps(state))
    }
}
