
public protocol PropsAssignable: class {
    associatedtype Props
    var deallocator: Deallocator? { set get }
    func assignProps(_ props: Props) -> Void
}

import UIKit.UIViewController

@discardableResult
public func configure<Controller,
                    PropsPresenter: Presentable,
                    Router: Routable,
                    State>
    (controller: Controller,
     dispatcher: Dispatcher,
     observable: MainQueueObservable<State>,
     routerProvider: (_ controller: Controller,
                        _ dispatcher: Dispatcher,
                        _ observable: MainQueueObservable<State>) -> Router,
     presenterProvider: (Router,
                        Dispatcher,
                        @escaping (Controller.Props) -> Void) -> PropsPresenter) -> (PropsPresenter, Router) where
    PropsPresenter.Props == Controller.Props,
    PropsPresenter.Router == Router,
    PropsPresenter.State == State,
    Router.Controller == Controller,
    Router.State == State {
    let router = routerProvider(controller, dispatcher, observable)
    let render: (Controller.Props) -> Void = { [weak controller] in
        controller?.assignProps($0)
    }
    let presenter = presenterProvider(router, dispatcher, render)
        controller.deallocator = observable.observe(fingerPrint: "\(Controller.self)", presenter.present(state:))
    return (presenter, router)
}
