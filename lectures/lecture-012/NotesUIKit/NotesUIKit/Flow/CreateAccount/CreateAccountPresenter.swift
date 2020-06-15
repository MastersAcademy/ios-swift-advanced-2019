import SwiftyReduxCommand

public class CreateAccountPresenter: Presentable {
    public let router: CreateAccountRouter
    public let dispatcher: Dispatcher
    public var render: (CreateAccountViewController.Props) -> Void
    
    public init(router: CreateAccountRouter,
                dispatcher: Dispatcher,
                render: @escaping (CreateAccountViewController.Props) -> Void) {
        self.router = router
        self.dispatcher = dispatcher
        self.render = render
    }
    
    public func stateToProps(_ state: AppState) -> CreateAccountViewController.Props {
        switch state.navigation.screen {
        case .createAccountInvalidEmailAlert:
            router.showInvalidRegistrationEmailAlert(confirm: Command<Void> { [dispatcher] in
                dispatcher.dispatch(CreateAccountAction.setEditedField(.email))
            })
        case .createAccountInvalidPasswordAlert:
            router.showInvalidRegistrationPasswordAlert(confirm: Command<Void> { [dispatcher] in
                dispatcher.dispatch(CreateAccountAction.setEditedField(.password))
            })
        case .createAccountPasswordsDontMatchAlert:
            router.showPasswordsDontMatch(confirm: Command<Void> { [dispatcher] in
                dispatcher.dispatch(CreateAccountAction.setEditedField(.confirmPassword))
            })
        case .createAccountGoBackToNoteList:
            router.createAccountGoBackToNoteList()
        default: break
        }
        
        let createAccountButton = Props.Button(title: "Create Account", tap: Command<Void> { [dispatcher] in
            guard Current.validation.isValidEmail(state.createAccount.email) else {
                dispatcher.dispatch(NavigationAction.navigate(.createAccountInvalidEmailAlert))
                return
            }
            
            guard Current.validation.isValidPassword(state.createAccount.password) else {
                dispatcher.dispatch(NavigationAction.navigate(.createAccountInvalidPasswordAlert))
                return
            }
            
            guard state.createAccount.password == state.createAccount.confirmPassword else {
                dispatcher.dispatch(NavigationAction.navigate(.createAccountPasswordsDontMatchAlert))
                return
            }
            
            dispatcher.dispatch(CreateAccountEffect.requestRegister(email: state.createAccount.email,
                                                                    password: state.createAccount.password))
        })
        
        let emailTextField = Props.TextField(text: state.createAccount.email,
                                             placeholder: "Email Address",
                                             editBegin: Command<Void> { [dispatcher] in
                                                guard state.createAccount.editedField != .email else { return }
                                                dispatcher.dispatch(CreateAccountAction.setEditedField(.email))
                                             },
                                             textChanged: Command<String> { [dispatcher] text in
                                                    dispatcher.dispatch(CreateAccountAction.emailChanged(text))
                                             },
                                             editEnd: Command<Void> { [dispatcher] in
                                                guard state.createAccount.editedField == .email else { return }
                                                dispatcher.dispatch(CreateAccountAction.setEditedField(nil))
                                             },
                                             isResponder: state.createAccount.editedField == .email
        )
        let passwordTextField = Props.TextField(text: state.createAccount.password,
                                                placeholder: "Password",
                                                editBegin: Command<Void> { [dispatcher] in
                                                    guard state.createAccount.editedField != .password else { return }
                                                   dispatcher.dispatch(CreateAccountAction.setEditedField(.password))
                                                },
                                                textChanged: Command<String> { [dispatcher] text in
                                                    dispatcher.dispatch(CreateAccountAction.passwordChanged(text))
                                                },
                                                editEnd: Command<Void> { [dispatcher] in
                                                    guard state.createAccount.editedField == .password else { return }
                                                   dispatcher.dispatch(CreateAccountAction.setEditedField(nil))
                                                },
                                                isResponder: state.createAccount.editedField == .password)
        let confirmPasswordTexrField =
            Props.TextField(text: state.createAccount.confirmPassword,
                            placeholder: "Confirm Password",
                            editBegin: Command<Void> { [dispatcher] in
                                guard state.createAccount.editedField != .confirmPassword else { return }
                                dispatcher.dispatch(CreateAccountAction.setEditedField(.confirmPassword))
                            },
                            textChanged: Command<String> { [dispatcher] text in
                                dispatcher.dispatch(CreateAccountAction.confirmPasswordChanged(text))
                            },
                            editEnd: Command<Void> { [dispatcher] in
                                guard state.createAccount.editedField == .confirmPassword else { return }
                                dispatcher.dispatch(CreateAccountAction.setEditedField(nil))
                            },
                            isResponder: state.createAccount.editedField == .confirmPassword)
        
        let handleNavigateBack = Command<Void> { [dispatcher] in
            dispatcher.dispatch(CreateAccountAction.reset)
        }
        
        return Props(title: "Create Account",
                     headerText: "Create account to store your notes in the Cloud",
                     signInButton: createAccountButton,
                     emailTextField: emailTextField, passwordTextField: passwordTextField,
                     confirmPasswordTextField: confirmPasswordTexrField,
                     navigatedBack: handleNavigateBack)
    }
}
