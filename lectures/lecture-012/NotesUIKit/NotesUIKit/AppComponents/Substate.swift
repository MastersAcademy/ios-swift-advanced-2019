import protocol SwiftyReduxCore.Action

public protocol Substate: Codable, Equatable {
    associatedtype StateAction: Action
    static var initial: Self { get }
    static var reducer: SubstateReducer<Self, StateAction> { get }
}
