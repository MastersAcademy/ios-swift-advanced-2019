import UIKit
import SwiftyReduxCommand

public class NoteDetailsViewController: UIViewController, PropsAssignable {
    public var deallocator: Deallocator?
    private var props = Props() {
        didSet {
            render(props: props)
        }
    }
    
    lazy private var textView = UITextView()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        setupTextView()
    }
    
    public override func didMove(toParent parent: UIViewController?) {
        super.didMove(toParent: parent)
        if parent == nil {
            props.navigatedBack.execute()
        }
    }
    
    private func setupTextView() {
        view.addSubview(textView)
        textView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            textView.topAnchor.constraint(equalTo: view.topAnchor),
            textView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        textView.delegate = self
        textView.setKeyboardInsetsEnabled()
    }
    
    private func render(props: Props) {
        title = props.title
        if !textView.isFirstResponder {
            textView.text = props.text
            if props.showsKeyboard {
                textView.becomeFirstResponder()
            }
        }
    }
    
    deinit {
        textView.setKeyboardInsetsDisabled()
    }
}

public extension NoteDetailsViewController {
    struct Props {
        public let title: String
        public let text: String
        public let textChanged: Command<String>
        public let showsKeyboard: Bool
        public let navigatedBack: Command<Void>
        
        public init(title: String = "",
                    text: String = "",
                    textChanged: Command<String> = .nop(),
                    showsKeyboard: Bool = false,
                    navigatedBack: Command<Void> = .nop()) {
            self.title = title
            self.text = text
            self.textChanged = textChanged
            self.showsKeyboard = showsKeyboard
            self.navigatedBack = navigatedBack
        }
    }
    
    func assignProps(_ props: NoteDetailsViewController.Props) {
        self.props = props
    }
}

extension NoteDetailsViewController: UITextViewDelegate {
    public func textViewDidChange(_ textView: UITextView) {
        guard let text = textView.text else { return }
        props.textChanged.execute(with: text)
    }
}
