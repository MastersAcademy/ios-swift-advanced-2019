import SwiftyReduxCore

// MARK: State
public struct AppState: Codable {
    public var navigation: NavigationState
    public var noteList: NoteListState
    public var noteDetails: NoteDetailsState
    public var connectAccount: ConnectAccountState
    public var createAccount: CreateAccountState
    public var account: AccountState
}

// MARK: Initial
public extension AppState {
    static var initial: AppState { AppState(navigation: .initial,
                                            noteList:  .initial,
                                            noteDetails: .initial,
                                            connectAccount: .initial,
                                            createAccount: .initial,
                                            account: .initial)
    }
}

// MARK: Reducer
public extension AppState {
    static let reducer: (inout AppState, Action) -> Void = { state, action in
        switch action {
        case let action as NavigationAction:
            NavigationState.reducer.reduce(state: &state.navigation, action: action)
        case let action as NoteListAction:
            NoteListState.reducer.reduce(state: &state.noteList, action: action)
        case let action as NoteDetailsAction:
            NoteDetailsState.reducer.reduce(state: &state.noteDetails, action: action)
        case let action as ConnectAccountAction:
            ConnectAccountState.reducer.reduce(state: &state.connectAccount, action: action)
        case let action as CreateAccountAction:
            CreateAccountState.reducer.reduce(state: &state.createAccount, action: action)
        case let action as AccountAction:
            AccountState.reducer.reduce(state: &state.account, action: action)
        default: break

        }
    }
}

public extension AppState {
    var editedNote: NoteListState.Note? {
        return noteDetails.noteId.flatMap { self.noteList.notes[$0] }
    }
}



