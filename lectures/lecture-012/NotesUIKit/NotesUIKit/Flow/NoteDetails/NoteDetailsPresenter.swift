import SwiftyReduxCommand

public class NoteDetailsPresenter: Presentable {
    public let router: NoteDetailsRouter
    public let dispatcher: Dispatcher
    public var render: (NoteDetailsViewController.Props) -> Void
    
    public init(router: NoteDetailsRouter,
                dispatcher: Dispatcher,
                render: @escaping (NoteDetailsViewController.Props) -> Void) {
        self.router = router
        self.dispatcher = dispatcher
        self.render = render
    }
    
    public func stateToProps(_ state: AppState) -> NoteDetailsViewController.Props {
        let handleTextChanged = Command<String> { [dispatcher] text in
            guard let id = state.noteDetails.noteId else { return }
            dispatcher.dispatch(NoteListEffect.updateNote(id: id, content: text))
        }
        
        let handleNavigatedBack = Command<Void> { [dispatcher] in
            if let note = state.editedNote {
                dispatcher.dispatch(note.content.isEmpty
                    ? NoteListEffect.removeNote(note.id)
                    : NoteListEffect.noticeNoteDoneEditing(note.id))
            }
        }
        
        let text = state.editedNote?.content ?? ""
        return Props(title: "", text: text, textChanged: handleTextChanged,
                     showsKeyboard: text.isEmpty, navigatedBack: handleNavigatedBack)
    }
}
