public typealias NoteListRouter = Router<AppState, NoteListViewController>

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
}
