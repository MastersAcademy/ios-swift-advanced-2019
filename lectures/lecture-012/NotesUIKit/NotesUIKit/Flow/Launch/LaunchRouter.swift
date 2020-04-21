public typealias LaunchRouter = Router<AppState, LaunchViewController>

extension LaunchRouter {
    public func openNoteList() {
        let controller = NoteListViewController()
        configure(controller: controller,
                  dispatcher: dispatcher,
                  observable: observable,
                  routerProvider: NoteListRouter.init,
                  presenterProvider: NoteListPresenter.init)
        currentController?.navigationController?.setNavigationBarHidden(false, animated: true)
        controller.navigationItem.hidesBackButton = true
        currentController?.navigationController?.pushViewController(controller, animated: true)
    }
}
