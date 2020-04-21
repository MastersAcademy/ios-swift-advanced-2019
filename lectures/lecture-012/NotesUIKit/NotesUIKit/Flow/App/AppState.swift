import SwiftyReduxCore

// MARK: State
public struct AppState {
    public var navigation: NavigationState
    public var noteList: NoteListState
    public var noteDetails: NoteDetailsState
}

// MARK: Initial
public extension AppState {
    static var initial: AppState { AppState(navigation: .initial,
                                            noteList:  .initial,
                                            noteDetails: .initial)
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
        default: break
        }
    }
}

public extension AppState {
    var editedNote: NoteListState.Note? {
        return noteDetails.noteId.flatMap { self.noteList.notes[$0] }
    }
}



