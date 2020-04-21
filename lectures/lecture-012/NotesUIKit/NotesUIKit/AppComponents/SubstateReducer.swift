import protocol SwiftyReduxCore.Action

public struct SubstateReducer<Substate, CurrentAction: Action> {
    private let currentReduce: (inout Substate, CurrentAction) -> Void
    public init(reduce: @escaping (inout Substate, CurrentAction) -> Void) {
        self.currentReduce = reduce
    }
    
    public func reduce<A: Action>(state: inout Substate, action: A) {
        guard let action = action as? CurrentAction else { return }
        currentReduce(&state, action)
    }
}
