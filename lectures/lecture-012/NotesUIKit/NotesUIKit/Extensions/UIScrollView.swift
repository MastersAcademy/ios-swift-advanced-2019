import ObjectiveC
import UIKit.UIScrollView

public extension UIScrollView {
  private var key: String { return "keyboardObservers" }
  func setKeyboardInsetsEnabled() {
    let observers = NSArray(array: [
      NotificationCenter
        .default
        .addObserver(forName: UITextField.keyboardWillShowNotification,
                     object: nil,
                     queue: .main) { [weak scrollView = self] notification in
                      (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect)
                        .map { scrollView?.contentInset = UIEdgeInsets.init(top: 0,
                                                                            left: 0,
                                                                            bottom: $0.size.height,
                                                                            right: 0) }
      },
      
      NotificationCenter
        .default
        .addObserver(forName: UITextField.keyboardWillHideNotification,
                     object: nil,
                     queue: .main) { [weak scrollView = self] _ in
                      scrollView?.contentInset = .zero
      }
    ])
    objc_setAssociatedObject(self,
                             key,
                             observers,
                             objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
  }
  
  func setKeyboardInsetsDisabled() {
    guard let observers = objc_getAssociatedObject(self, key) as? NSArray else { return }
    observers.forEach(NotificationCenter.default.removeObserver(_:))
    objc_setAssociatedObject(self, key, nil, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
  }
}
