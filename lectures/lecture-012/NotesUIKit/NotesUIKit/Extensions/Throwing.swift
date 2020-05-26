public func fromThrowing<A>(_ f: @escaping () throws -> A) -> () -> Result<A, Error> {
    return {
        do {
            return .success(try f())
        } catch {
            return .failure(error)
        }
    }
}

public func fromThrowing<A, B>(_ f: @escaping (A) throws -> B) -> (A) -> Result<B, Error> {
    return {
        do {
            return .success(try f($0))
        } catch {
            return .failure(error)
        }
    }
}

public func fromThrowing<A, B, C>(_ f: @escaping (A, B) throws -> C) -> (A, B) -> Result<C, Error> {
    return {
        do {
            return .success(try f($0, $1))
        } catch {
            return .failure(error)
        }
    }
}
