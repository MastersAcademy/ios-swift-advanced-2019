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
        switch state.navigation.screen {
        case .noteDetails: router.showNoteDetails()
        case .connectUserAccount: router.showConnectAccount()
        case .disconnectUserAccount:
            let handleDisconnectTap = Command<Void> { [dispatcher] in
                dispatcher.dispatch(NavigationAction.navigate(.confirmDisconnectUserAccount))
            }
            router.showDisconnectAccount(account: state.account.user?.email ?? "", disconnectTap: handleDisconnectTap)
        case .confirmDisconnectUserAccount:
            let handleConfirmTap = Command<Void> { [dispatcher] in
                dispatcher.dispatch(ConnectAccountEffect.requestSignOut)
            }
            router.showConfirmDisconnectAccountAlert(confirmTap: handleConfirmTap)
        default: break
        }
        
        let handleAddTap = Command<Void> { [dispatcher] in
            dispatcher.dispatch(NoteListEffect.createNote)
        }
        
        let noteToProps: (NoteListState.Note) -> Props.Note = { [dispatcher, dateFormatter] note in
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
        
        let account: Props.Account
        
        switch state.account.user {
        case .some: account = .disconnect(Command { [dispatcher] in
            dispatcher.dispatch(NavigationAction.navigate(.disconnectUserAccount))
        })
        case .none: account = .connect(Command { [dispatcher] in
            dispatcher.dispatch(NavigationAction.navigate(.connectUserAccount))
        })
        }
        
        return NoteListViewController.Props(title: "Notes", notes: notes,
                                            addTap: handleAddTap, account: account)
    }
}


