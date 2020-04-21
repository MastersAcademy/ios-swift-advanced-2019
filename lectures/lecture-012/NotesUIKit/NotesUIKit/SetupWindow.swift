import UIKit.UIWindow
import SwiftyReduxCore

public func setup(store: Store<AppState>, window: UIWindow) {
    let controller = LaunchViewController()
    let dispatcher = Dispatcher(id: "store.dispatch", store.dispatch)
    configure(controller: controller,
              dispatcher: dispatcher,
              observable: MainQueueObservable<AppState>(store.observeOnMain),
              routerProvider: LaunchRouter.init,
              presenterProvider: LaunchPresenter.init)
    dispatcher.dispatch(LaunchEffect.setup)
    window.rootViewController = UINavigationController(rootViewController: controller)
    controller.navigationController?.setNavigationBarHidden(true, animated: false)
    window.makeKeyAndVisible()
}
