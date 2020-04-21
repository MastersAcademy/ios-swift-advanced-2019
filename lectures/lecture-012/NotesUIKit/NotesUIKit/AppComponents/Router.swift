public protocol Routable {
    associatedtype Controller: PropsAssignable
    associatedtype State
    var currentController: Controller? { get }
    var dispatcher: Dispatcher { get }
    var observable: MainQueueObservable<State> { get }
}

public final class Router<RouterState, RouterController: PropsAssignable>: Routable {
    public typealias State = RouterState
    public typealias Controller = RouterController
    public weak var currentController: Controller?
    public let dispatcher: Dispatcher
    public let observable: MainQueueObservable<State>
    
    public init(currentController: Controller,
                dispatcher: Dispatcher,
                observable: MainQueueObservable<State>) {
        self.currentController = currentController
        self.dispatcher = dispatcher
        self.observable = observable
    }    
}

