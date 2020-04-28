import UIKit
import SwiftyReduxCommand

public class NoteListViewController: UIViewController {
    
    lazy private var tableView = UITableView()
    public var deallocator: Deallocator?
    private var props = Props() {
        didSet {
            render(props: props)
        }
    }
    
    private let section = 0
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupAddButton()
        setupConnectUserButton()
    }
    
    private func setupTableView() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(NoteListCell.self, forCellReuseIdentifier: NoteListCell.identifier)
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func setupAddButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                                   target: self,
                                                                   action: #selector(handleAddTap))
       
    }
    
    private func setupConnectUserButton() {
        navigationItem.leftBarButtonItem =
                   UIBarButtonItem(image: UIImage(systemName: "person.badge.plus.fill"),
                                   style: .plain,
                                   target: self,
                                   action: #selector(handleConnectUserTap))
    }
    
    private func render(props: Props) {
        title = props.title
        if navigationController?.visibleViewController == self &&
        props.notes.count != tableView.numberOfRows(inSection: section) && view.window != nil {
            tableView.reloadSections([section], with: .fade)
        } else {
            tableView.reloadData()
        }
    }
    
    
    @objc
    private func handleAddTap() {
        props.addTap.execute()
    }
    
    @objc
    private func handleConnectUserTap() {
        props.connectUserTap.execute()
    }

}

extension NoteListViewController: PropsAssignable {
    public struct Props {
        public let title: String
        public let notes: [Note]
        public let addTap: Command<Void>
        public let connectUserTap: Command<Void>
        
        public init(title: String = "", notes: [Note] = [],
                    addTap: Command<Void> = .nop(),
                    connectUserTap: Command<Void> = .nop()) {
            self.title = title
            self.notes = notes
            self.addTap = addTap
            self.connectUserTap = connectUserTap
        }
        
        public struct Note {
            public let title: String
            public let tap: Command<Void>
            public let date: String
            public let deleteTap: Command<Void>
            
            public init(title: String = "", tap: Command<Void> = .nop(), date: String = "",
                        deleteTap: Command<Void> = .nop()) {
                self.title = title
                self.tap = tap
                self.date = date
                self.deleteTap = deleteTap
            }
        }
    }
    
    public func assignProps(_ props: NoteListViewController.Props) {
        self.props = props
    }
}

extension NoteListViewController: UITableViewDelegate {
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        props.notes[indexPath.row].tap.execute()
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
}

extension NoteListViewController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        props.notes.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NoteListCell.identifier) as! NoteListCell
        cell.note = props.notes[indexPath.row]
        return cell
    }
    
    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            props.notes[indexPath.row].deleteTap.execute()
        }
    }
}

public class NoteListCell: UITableViewCell, IdentifierProvider {
    public typealias Note = NoteListViewController.Props.Note
    
    public var note = Note(title: "", tap: .nop()) {
        didSet {
            render(note: note)
        }
    }
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    private func render(note: Note) {
        textLabel?.text = note.title
        detailTextLabel?.text = note.date
    }
    
}

public protocol IdentifierProvider {}
extension IdentifierProvider {
    public static var identifier: String { return "\(Self.self)" }
}





