public typealias ConnectAccountRouter = Router<AppState, ConnectAccountViewController>

import UIKit.UIAlertController
import SwiftyReduxCommand

public extension ConnectAccountRouter {
    func showInvalidEmailAlert(confirm: Command<Void>) {
        let controller = UIAlertController(title: nil,
                                           message: "Please provide valid email address",
                                           preferredStyle: .alert)
        let confirmButton = UIAlertAction(title: "OK",
                                          style: .default) { button in
                                            confirm.execute()
        }
        controller.addAction(confirmButton)
        currentController?.present(controller, animated: true)
    }
    
    func showInvalidPasswordAlert(confirm: Command<Void>) {
        let controller = UIAlertController(title: nil,
                                           message:
            "Please provide password with at least \(Current.const.validation.minPasswordLength) characters length",
                                           preferredStyle: .alert)
        let confirmButton = UIAlertAction(title: "OK",
                                          style: .default) { button in
                                            confirm.execute()
        }
        controller.addAction(confirmButton)
        currentController?.present(controller, animated: true)
    }
    
    func showCreateAccount() {
        let controller = CreateAccountViewController()
        configure(controller: controller,
                  dispatcher: dispatcher,
                  observable: observable,
                  routerProvider: CreateAccountRouter.init,
                  presenterProvider: CreateAccountPresenter.init)
        currentController?.navigationController?.pushViewController(controller, animated: true)
    }
    
    func connectAccountGoBackToNoteList() {
        guard let noteListController = currentController?.navigationController?.viewControllers
            .first(where: { $0 is NoteListViewController }) else { return }
        currentController?.navigationController?.popToViewController(noteListController, animated: true)
    }
}
