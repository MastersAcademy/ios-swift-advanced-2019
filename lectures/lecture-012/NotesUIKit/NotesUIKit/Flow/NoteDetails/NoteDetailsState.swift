import SwiftyReduxCore

public struct NoteDetailsState {
    public var noteId: NoteListState.Note.ID?
}

extension NoteDetailsState: Substate {    
   public static var initial = Self(noteId: nil)
    
    
}

public extension NoteDetailsState {
    static var reducer = SubstateReducer<NoteDetailsState, NoteDetailsAction> { state, action in
        switch action {
        case let .setNote(noteId):
            state.noteId = noteId
        case .unsetNote:
            state.noteId = nil
        }
    }
}

public enum NoteDetailsAction: Action {
    case setNote(NoteListState.Note.ID)
    case unsetNote
}
