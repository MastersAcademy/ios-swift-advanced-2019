import UIKit
import SwiftyReduxCommand

public class ConnectAccountViewController: UIViewController {
    public var deallocator: Deallocator?
    
    lazy private var scrollView = UIScrollView()
    lazy private var headerLabel = UILabel()
    lazy private var emailTextField = UITextField()
    lazy private var passwordTextField = UITextField()
    lazy private var signInButton = UIButton(type: .roundedRect)
    lazy private var createButton = UIButton(type: .roundedRect)

    private var props = Props() {
        didSet {
            render()
        }
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        setupScrollView()
        setupHeaderLabel()
        setupEmailTextField()
        setupPasswordTextField()
        setupSignInButton()
        setupCreateButton()
    }
    
    public override func didMove(toParent parent: UIViewController?) {
        super.didMove(toParent: parent)
        if parent == nil {
            props.navigatedBack.execute()
        }
    }
    
    private func render() {
        title = props.title
        headerLabel.text = props.headerText
        signInButton.setTitle(props.signInButton.title, for: .normal)
        createButton.setTitle(props.createAccountButton.title, for: .normal)
        renderTextField(props: props.emailTextField, textField: emailTextField)
        renderTextField(props: props.passwordTextField, textField: passwordTextField)
    }
    
    private func renderTextField(props: Props.TextField,
                                 textField: UITextField) {
        if !textField.isFirstResponder { textField.text = props.text }
        textField.placeholder = props.placeholder
        switch (textField.isFirstResponder, props.isResponder) {
        case (true, true), (false, false): break
        case (true, false):
            textField.resignFirstResponder()
        case (false, true):
            textField.becomeFirstResponder()
        }
    }
    
    private func setupScrollView() {
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .systemBackground
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        scrollView.setKeyboardInsetsEnabled()
        scrollView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleScollViewTap)))
    }
    
    private func setupHeaderLabel() {
        scrollView.addSubview(headerLabel)
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.numberOfLines = 0
        headerLabel.textAlignment = .center
        headerLabel.font = .boldSystemFont(ofSize: 19)
        NSLayoutConstraint.activate([
            headerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            headerLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            headerLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 80)
        ])
    }
    
    private func setupEmailTextField() {
        scrollView.addSubview(emailTextField)
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.borderStyle = .roundedRect
        emailTextField.keyboardType = .emailAddress
        emailTextField.autocapitalizationType = .none
        emailTextField.leftView = UIImage(systemName: "envelope.fill").map(UIImageView.init).map {
            let rect = $0.bounds
            $0.contentMode = .scaleAspectFit
            $0.tintColor = .label
            let view = UIView(frame: rect)
            $0.frame = rect.offsetBy(dx: 3, dy: 0)
            view.addSubview($0)
            return view
        }
        emailTextField.leftViewMode = .always
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: 40),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        emailTextField.addTarget(self, action: #selector(handleEmailChanged), for: .editingChanged)
        emailTextField.delegate = self
    }
    
    private func setupPasswordTextField() {
        scrollView.addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.keyboardType = .default
        passwordTextField.isSecureTextEntry = true
        passwordTextField.leftView = UIImage(systemName: "lock.fill").map(UIImageView.init).map {
            var rect = $0.bounds
            rect.size.width += 3
            $0.contentMode = .scaleAspectFit
            $0.tintColor = .label
            let view = UIView(frame: rect)
            $0.frame = rect.offsetBy(dx: 4, dy: 0)
            view.addSubview($0)
            return view
        }
        passwordTextField.leftViewMode = .always
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10),
            passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor)
        ])
        passwordTextField.addTarget(self, action: #selector(handlePasswordChanged), for: .editingChanged)
        passwordTextField.delegate = self
    }
    
    private func setupSignInButton() {
        scrollView.addSubview(signInButton)
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10),
            signInButton.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            signInButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor)
        ])
        signInButton.addTarget(self, action: #selector(handleSighInTap), for: .touchUpInside)
    }
    
    private func setupCreateButton() {
        scrollView.addSubview(createButton)
        createButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            createButton.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 10),
            createButton.leadingAnchor.constraint(equalTo: signInButton.leadingAnchor),
            createButton.trailingAnchor.constraint(equalTo: signInButton.trailingAnchor),
            createButton.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0)
        ])
        createButton.addTarget(self, action: #selector(handleCreateAccountTap), for: .touchUpInside)
    }
    
    @objc
    private func handleScollViewTap() {
        view.endEditing(true)
    }
    
    @objc
    private func handleEmailChanged() {
        props.emailTextField.textChanged.execute(with: emailTextField.text ?? "")
    }
    
    @objc
    private func handlePasswordChanged() {
        props.passwordTextField.textChanged.execute(with: passwordTextField.text ?? "")
    }
    
    @objc
    private func handleSighInTap() {
        props.signInButton.tap.execute()
    }
    
    @objc
    private func handleCreateAccountTap() {
        props.createAccountButton.tap.execute()
    }
    
    deinit {
        scrollView.setKeyboardInsetsDisabled()
    }
}

extension ConnectAccountViewController: PropsAssignable {
    public struct Props {
        public let title: String
        public let headerText: String
        public let signInButton: Button
        public let createAccountButton: Button
        public let emailTextField: TextField
        public let passwordTextField: TextField
        public let navigatedBack: Command<Void>
        
        public struct Button {
            public init(title: String = "", tap: Command<Void> = .nop()) {
                self.title = title
                self.tap = tap
            }
            
            public let title: String
            public let tap: Command<Void>
        }
        
        public struct TextField {
            public let text: String
            public let placeholder: String
            public let editBegin: Command<Void>
            public let textChanged: Command<String>
            public let editEnd: Command<Void>
            public let isResponder: Bool
            
            public init(text: String = "", placeholder: String = "",
                        editBegin: Command<Void> = .nop(), textChanged: Command<String> = .nop(),
                        editEnd: Command<Void> = .nop(), isResponder: Bool = false) {
                self.text = text
                self.placeholder = placeholder
                self.editBegin = editBegin
                self.textChanged = textChanged
                self.editEnd = editEnd
                self.isResponder = isResponder
            }
        }
        
        public init(title: String = "", headerText: String = "", signInButton: Button = .init(),
                    createAccountButton: Button = .init(), emailTextField: TextField = .init(),
                    passwordTextField: TextField = .init(),
                    navigatedBack: Command<Void> = .nop()) {
            self.title = title
            self.headerText = headerText
            self.signInButton = signInButton
            self.createAccountButton = createAccountButton
            self.emailTextField = emailTextField
            self.passwordTextField = passwordTextField
            self.navigatedBack = navigatedBack
        }
    }
    
    public func assignProps(_ props: Props) {
        self.props = props
    }
}

extension ConnectAccountViewController: UITextFieldDelegate {
    public func textFieldDidBeginEditing(_ textField: UITextField) {
        switch textField {
        case emailTextField:
            props.emailTextField.editBegin.execute()
        case passwordTextField:
            props.passwordTextField.editBegin.execute()
        default: break
        }
    }
    
    public func textFieldDidEndEditing(_ textField: UITextField) {
        switch textField {
        case emailTextField:
            props.emailTextField.editEnd.execute()
        case passwordTextField:
            props.passwordTextField.editEnd.execute()
        default: break
        }
    }
}


