public final class LaunchPresenter: Presentable {
    public let router: LaunchRouter
    public let dispatcher: Dispatcher
    public var render: (LaunchViewController.Props) -> Void
    
    public init(router: LaunchRouter,
                dispatcher: Dispatcher,
                render: @escaping (LaunchViewController.Props) -> Void) {
        self.router = router
        self.dispatcher = dispatcher
        self.render = render
    }
    
    public func present(state: AppState) {
        if state.navigation.screen == .noteList {
            router.openNoteList()
        } 
        render(stateToProps(state))
    }
    
    public func stateToProps(_ state: AppState) -> LaunchViewController.Props {
        return LaunchViewController.Props(title: "NotesApp", isBusy: true)
    }
}

