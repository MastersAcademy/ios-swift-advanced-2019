import SwiftyReduxCore

public struct NoteListState: Substate {
    public static var initial = Self()
    
    public var list = [Note.ID]()
    public var notes = [Note.ID: Note]()
    public var shouldSyncFromCache = false
}

// MARK: Action
public enum NoteListAction: Action {
    case addNote(NoteListState.Note)
    case updateNote(id: NoteListState.Note.ID, content: String, date: Date)
    case removeNote(NoteListState.Note.ID)
    case addNotes([NoteListState.Note])
    case shouldSyncFromCache(Bool)
    case reset
}


public extension NoteListState {
    static var reducer = SubstateReducer<NoteListState, NoteListAction> { state, action in
        switch action {
        case let .addNote(note):
            if state.notes[note.id] == nil {
                // insert new note at the beginning to avoid sorting
                state.list.insert(note.id, at: 0)
            }
            state.notes[note.id] = note
        case let .updateNote(id, content, date):
            var note = state.notes[id]
            note?.content = content
            note?.updatedAt = date
            state.notes[id] = note
            guard let idx = state.list.firstIndex(where: { noteId in noteId == id }) else {
                assertionFailure("unknow id \(id)")
                return
            }
            // insert updated note at the beginning to avoid sorting
            state.list.remove(at: idx)
            state.list.insert(id, at: 0)
            
            
        case let .removeNote(id):
            guard let idx = state.list.firstIndex(where: { noteId in noteId == id }) else {
                assertionFailure("unknow id \(id)")
                return
            }
            state.list.remove(at: idx)
            state.notes[id] = nil
        case let .addNotes(notes):
            for note in notes {
                guard state.notes[note.id] == nil else {
                    echo(level: .warning, "note has been already added")
                    continue
                }
                state.list.append(note.id)
                state.notes[note.id] = note
            }
        case let .shouldSyncFromCache(sync):
            state.shouldSyncFromCache = sync
        case .reset:
            state = .init()
        }
    }
}

import struct Foundation.Date
import struct Foundation.UUID

public extension NoteListState {
    struct Note: Codable, Equatable {
        public typealias ID = UUID
        public var id: ID
        public var content: String
        public var updatedAt: Date

    }
}


