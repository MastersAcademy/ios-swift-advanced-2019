public typealias NoteListRouter = Router<AppState, NoteListViewController>

import UIKit.UIAlertController
import SwiftyReduxCommand

public extension NoteListRouter {
    func showNoteDetails() {
        let controller = NoteDetailsViewController()
        configure(controller: controller,
                  dispatcher: dispatcher,
                  observable: observable,
                  routerProvider: NoteDetailsRouter.init,
                  presenterProvider: NoteDetailsPresenter.init)
        currentController?.navigationController?.pushViewController(controller, animated: true)
    }
    
    func showConnectAccount() {
        let controller = ConnectAccountViewController()
        configure(controller: controller,
                  dispatcher: dispatcher,
                  observable: observable,
                  routerProvider: ConnectAccountRouter.init,
                  presenterProvider: ConnectAccountPresenter.init)
        currentController?.navigationController?.pushViewController(controller, animated: true)
    }
    
    func showDisconnectAccount(account: String, disconnectTap: Command<Void>) {
        let controller = UIAlertController(title: nil,
                                           message: "Currently your notes are synced with '\(account)' account.",
                                           preferredStyle: .actionSheet)
        let disconnect = UIAlertAction(title: "Disconnect account",
                                       style: .destructive) { _ in
                                        disconnectTap.execute()
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        
        controller.addAction(disconnect)
        controller.addAction(cancel)
        currentController?.present(controller, animated: true)
        
    }
    
    func showConfirmDisconnectAccountAlert(confirmTap: Command<Void>) {
        let controller = UIAlertController(title: nil, message: "Confirm disconnect",
                                           preferredStyle: .alert)
        let confirm = UIAlertAction(title: "Disconnect",
                                    style: .destructive) { _ in
                                        confirmTap.execute()
        }
        
        let cancel = UIAlertAction(title: "Cancel",
                                    style: .cancel)
        
        controller.addAction(confirm)
        controller.addAction(cancel)
        currentController?.present(controller, animated: true)
        
    }
}
