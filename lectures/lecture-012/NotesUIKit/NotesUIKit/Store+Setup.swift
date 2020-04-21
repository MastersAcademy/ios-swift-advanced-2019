import SwiftyReduxCore

extension Store {
    public static func create() -> Store<AppState> {
        return Store<AppState>(id: "NotesApp Store",
                               state: AppState.initial,
                               reducer: AppState.reducer,
                               middleware: [navigationMiddleware,
                                            launchMiddleware,
                                            noteListMiddleware,
                                            loggingMiddleware])
    }
}
