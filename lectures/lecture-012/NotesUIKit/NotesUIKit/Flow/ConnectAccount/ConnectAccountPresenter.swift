import SwiftyReduxCommand

public class ConnectAccountPresenter: Presentable {
    public let router: ConnectAccountRouter
    public let dispatcher: Dispatcher
    public var render: (ConnectAccountViewController.Props) -> Void
    
    public init(router: ConnectAccountRouter,
                dispatcher: Dispatcher,
                render: @escaping (ConnectAccountViewController.Props) -> Void) {
        self.router = router
        self.dispatcher = dispatcher
        self.render = render
    }
    
    public func stateToProps(_ state: AppState) -> ConnectAccountViewController.Props {
        switch state.navigation.screen {
        case .connectAccountInvalidEmailAlert:
           router.showInvalidEmailAlert(confirm: Command<Void> { [dispatcher] in
                dispatcher.dispatch(ConnectAccountAction.setEditedField(.email))
            })
        case .connectAccountInvalidPasswordAlert:
            router.showInvalidPasswordAlert(confirm: Command<Void> { [dispatcher] in
                dispatcher.dispatch(ConnectAccountAction.setEditedField(.password))
            })
        case .createUserAccount:
            router.showCreateAccount()
        case .connectAccountGoBackToNoteList:
            router.connectAccountGoBackToNoteList()
        default: break
        }
        
        let sighInButton = Props.Button(title: "Sign-In", tap: Command<Void> { [dispatcher] in
            guard Current.validation.isValidEmail(state.connectAccount.email) else {
                dispatcher.dispatch(NavigationAction.navigate(.connectAccountInvalidEmailAlert))
                return
            }
            
            guard Current.validation.isValidPassword(state.connectAccount.password) else {
                dispatcher.dispatch(NavigationAction.navigate(.connectAccountInvalidPasswordAlert))
                return
            }
            
            dispatcher.dispatch(ConnectAccountEffect.requestSignIn(email: state.connectAccount.email,
                                                                   password: state.connectAccount.password))
        })
        
        let createAccountButton = Props.Button(title: "Create Account", tap: Command<Void> { [dispatcher] in
            dispatcher.dispatch(ConnectAccountAction.setEditedField(nil))
            dispatcher.dispatch(NavigationAction.navigate(.createUserAccount))
        })
                
        let emailTextField = Props.TextField(text: state.connectAccount.email,
                                             placeholder: "Email Address",
                                             editBegin: Command<Void> { [dispatcher] in
                                                guard state.connectAccount.editedField != .email else { return }
                                                dispatcher.dispatch(ConnectAccountAction.setEditedField(.email))
                                             },
                                             textChanged: Command<String> { [dispatcher] text in
                                                    dispatcher.dispatch(ConnectAccountAction.emailChanged(text))
                                             },
                                             editEnd: Command<Void> { [dispatcher] in
                                                guard state.connectAccount.editedField == .email else { return }
                                                dispatcher.dispatch(ConnectAccountAction.setEditedField(nil))
                                             },
                                             isResponder: state.connectAccount.editedField == .email
        )
        let passwordTexrField = Props.TextField(text: state.connectAccount.password,
                                                placeholder: "Password",
                                                editBegin: Command<Void> { [dispatcher] in
                                                    guard state.connectAccount.editedField != .password else { return }
                                                   dispatcher.dispatch(ConnectAccountAction.setEditedField(.password))
                                                },
                                                textChanged: Command<String> { [dispatcher] text in
                                                    dispatcher.dispatch(ConnectAccountAction.passwordChanged(text))
                                                },
                                                editEnd: Command<Void> { [dispatcher] in
                                                    guard state.connectAccount.editedField == .password else { return }
                                                   dispatcher.dispatch(ConnectAccountAction.setEditedField(nil))
                                                },
                                                isResponder: state.connectAccount.editedField == .password)
        let handleNavigateBack = Command<Void> { [dispatcher] in
            dispatcher.dispatch(ConnectAccountAction.reset)
        }
        
        return Props(title: "Connect Account",
                     headerText: "You can sign-in or create account to store your notes in the Cloud",
                     signInButton: sighInButton, createAccountButton: createAccountButton,
                     emailTextField: emailTextField, passwordTextField: passwordTexrField, navigatedBack: handleNavigateBack)
    }
}
