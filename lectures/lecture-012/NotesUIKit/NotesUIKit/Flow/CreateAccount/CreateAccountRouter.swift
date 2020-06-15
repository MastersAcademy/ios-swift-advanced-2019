public typealias CreateAccountRouter = Router<AppState, CreateAccountViewController>

import UIKit.UIAlertController
import SwiftyReduxCommand

public extension CreateAccountRouter {
    func showInvalidRegistrationEmailAlert(confirm: Command<Void>) {
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
    
    func showInvalidRegistrationPasswordAlert(confirm: Command<Void>) {
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
    
    func showPasswordsDontMatch(confirm: Command<Void>) {
        let controller = UIAlertController(title: nil,
                                           message: "Passwords do not match",
                                           preferredStyle: .alert)
        let confirmButton = UIAlertAction(title: "OK",
                                          style: .default) { button in
                                            confirm.execute()
        }
        controller.addAction(confirmButton)
        currentController?.present(controller, animated: true)
    }
    
    func createAccountGoBackToNoteList() {
        guard let noteListController = currentController?.navigationController?.viewControllers
            .first(where: { $0 is NoteListViewController }) else { return }
        currentController?.navigationController?.popToViewController(noteListController, animated: true)
    }
}
