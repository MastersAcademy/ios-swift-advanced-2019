import UIKit
import SwiftyReduxCommand

public class CreateAccountViewController: UIViewController {
    public var deallocator: Deallocator?
    
    lazy private var scrollView = UIScrollView()
    lazy private var headerLabel = UILabel()
    lazy private var emailTextField = UITextField()
    lazy private var passwordTextField = UITextField()
    lazy private var confirmPasswordTextField = UITextField()
    lazy private var createAccountButton = UIButton(type: .roundedRect)
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
        setupConfirmPasswordTextField()
        setupSignInButton()
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
        createAccountButton.setTitle(props.createAccountButton.title, for: .normal)
        renderTextField(props: props.emailTextField, textField: emailTextField)
        renderTextField(props: props.passwordTextField, textField: passwordTextField)
        renderTextField(props: props.confirmPasswordTextField, textField: confirmPasswordTextField)
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
            headerLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 40)
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
    
    private func setupConfirmPasswordTextField() {
        scrollView.addSubview(confirmPasswordTextField)
        confirmPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        confirmPasswordTextField.borderStyle = .roundedRect
        confirmPasswordTextField.keyboardType = .default
        confirmPasswordTextField.isSecureTextEntry = true
        confirmPasswordTextField.leftView = UIImage(systemName: "lock.fill").map(UIImageView.init).map {
            var rect = $0.bounds
            rect.size.width += 3
            $0.contentMode = .scaleAspectFit
            $0.tintColor = .label
            let view = UIView(frame: rect)
            $0.frame = rect.offsetBy(dx: 4, dy: 0)
            view.addSubview($0)
            return view
        }
        confirmPasswordTextField.leftViewMode = .always
        NSLayoutConstraint.activate([
            confirmPasswordTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10),
            confirmPasswordTextField.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            confirmPasswordTextField.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor)
        ])
        confirmPasswordTextField.addTarget(self, action: #selector(handleConfirmPasswordChanged), for: .editingChanged)
        confirmPasswordTextField.delegate = self
    }
    
    private func setupSignInButton() {
        scrollView.addSubview(createAccountButton)
        createAccountButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            createAccountButton.topAnchor.constraint(equalTo: confirmPasswordTextField.bottomAnchor, constant: 20),
            createAccountButton.leadingAnchor.constraint(equalTo: confirmPasswordTextField.leadingAnchor),
            createAccountButton.trailingAnchor.constraint(equalTo: confirmPasswordTextField.trailingAnchor)
        ])
        createAccountButton.addTarget(self, action: #selector(handleCreateAccountTap), for: .touchUpInside)
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
    private func handleConfirmPasswordChanged() {
        props.confirmPasswordTextField.textChanged.execute(with: passwordTextField.text ?? "")
    }
    
    @objc
    private func handleCreateAccountTap() {
        props.createAccountButton.tap.execute()
    }
    
    deinit {
        scrollView.setKeyboardInsetsDisabled()
    }
}

extension CreateAccountViewController: PropsAssignable {
    public struct Props {
        public let title: String
        public let headerText: String
        public let createAccountButton: Button
        public let emailTextField: TextField
        public let passwordTextField: TextField
        public let confirmPasswordTextField: TextField
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
                    emailTextField: TextField = .init(),
                    passwordTextField: TextField = .init(),
                    confirmPasswordTextField: TextField = .init(),
                    navigatedBack: Command<Void> = .nop()) {
            self.title = title
            self.headerText = headerText
            self.createAccountButton = signInButton
            self.emailTextField = emailTextField
            self.passwordTextField = passwordTextField
            self.navigatedBack = navigatedBack
            self.confirmPasswordTextField = confirmPasswordTextField
        }
    }
    
    public func assignProps(_ props: Props) {
        self.props = props
    }
}

extension CreateAccountViewController: UITextFieldDelegate {
    public func textFieldDidBeginEditing(_ textField: UITextField) {
        switch textField {
        case emailTextField:
            props.emailTextField.editBegin.execute()
        case passwordTextField:
            props.passwordTextField.editBegin.execute()
        case confirmPasswordTextField:
            props.confirmPasswordTextField.editBegin.execute()
        default: break
        }
    }
    
    public func textFieldDidEndEditing(_ textField: UITextField) {
        switch textField {
        case emailTextField:
            props.emailTextField.editEnd.execute()
        case passwordTextField:
            props.passwordTextField.editEnd.execute()
        case confirmPasswordTextField:
            props.confirmPasswordTextField.editEnd.execute()
        default: break
        }
    }
}


