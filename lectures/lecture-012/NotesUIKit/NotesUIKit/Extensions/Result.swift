import Foundation

func handleResult<Value>(result: Value?, error: Error?) -> Result<Value, Error> {
    switch (result, error) {
    case let (.some, .some(error)): return .failure(error)
    case (.none, .none): return .failure(NSError(domain: "EmptyResultError", code: .min, userInfo: nil))
    case let (.some(value), .none):
        return .success(value)
    case let (.none, .some(error)):
        return .failure(error)
    }
}
