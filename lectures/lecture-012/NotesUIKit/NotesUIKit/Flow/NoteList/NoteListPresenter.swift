import SwiftyReduxCommand
import class Foundation.DateFormatter

public final class NoteListPresenter: Presentable {
    public let router: NoteListRouter
    public let dispatcher: Dispatcher
    public let render: (NoteListViewController.Props) -> Void
    
    public let dateFormatter: DateFormatter = {
        let formatter = Current.dateFormatter()
        formatter.dateFormat = "MM-dd-yyyy HH:mm"
        return formatter
    }()
    
    public init(router: NoteListRouter,
                dispatcher: Dispatcher,
                render: @escaping (NoteListViewController.Props) -> Void) {
        self.router = router
        self.dispatcher = dispatcher
        self.render = render
    }
    
    public func stateToProps(_ state: AppState) -> NoteListViewController.Props {
        if state.navigation.screen == .noteDetails {
            router.showNoteDetails()
        }
        
        let handleAddTap = Command<Void> { [dispatcher] in
            dispatcher.dispatch(NoteListEffect.createNote)
        }
        
        let noteToProps: (NoteListState.Note) -> Props.Note = {  [dispatcher, dateFormatter] note in
            let handleTap = Command<Void> {
                dispatcher.dispatch(NoteListEffect.editNote(note.id))
            }
            
            let handleDeleteTap = Command<Void> { [dispatcher] in
                dispatcher.dispatch(NoteListEffect.removeNote(note.id))
            }
            
            
            let item = Props.Note(title: note.content.isEmpty ? "Note" : note.content, tap: handleTap,
                                  date: dateFormatter.string(from: note.updatedAt), deleteTap: handleDeleteTap)
            return item
        }
        
        let notes = state.noteList.list
            .compactMap { noteId in state.noteList.notes[noteId] }
            .map(noteToProps)
        
        return NoteListViewController.Props(title: "Notes",
                                            notes: notes,
                                            addTap: handleAddTap)
    }
}


