public func zip2<A, B>(_ a: A?, _ b: B?) -> (A, B)? {
    guard let a = a, let b = b else { return nil }
    return (a, b)
}

public func zip3<A, B, C>(_ a: A?, _ b: B?, _ c: C?) -> (A, B, C)? {
    return zip2(a, zip2(b, c))
        .map { a, bc in (a, bc.0, bc.1) }
}

public func zip2<A, B, C>(
  with f: @escaping (A, B) -> C
  ) -> (A?, B?) -> C? {

  return { zip2($0, $1).map(f) }
}

public func zip3<A, B, C, D>(
  with f: @escaping (A, B, C) -> D
  ) -> (A?, B?, C?) -> D? {

  return { zip3($0, $1, $2).map(f) }
}

func unpack<A, B, C>(_ tuple: (A, (B, C))) -> (A, B, C) {
    return (tuple.0, tuple.1.0, tuple.1.1)
}

func unpack<A, B, C, D>(_ tuple: (A, (B, (C, D)))) -> (A, B, C, D) {
    return (tuple.0, tuple.1.0, tuple.1.1.0, tuple.1.1.1)
}

func unpack<A, B, C, D, E>(_ tuple: (A, (B, (C, (D, E))))) -> (A, B, C, D, E) {
    return (tuple.0, tuple.1.0, tuple.1.1.0, tuple.1.1.1.0, tuple.1.1.1.1)
}

func zip4<A, B, C, D>(_ a: A?, _ b: B?, _ c: C?, _ d: D?) -> (A, B, C, D)? {
    return zip2(a, zip2(b, zip2(c, d))).map(unpack)
}
 
func zip4<A, B, C, D, E>(with f: @escaping (A, B, C, D) -> E) -> (A?, B?, C?, D?) -> E? {
    return {
        zip4($0, $1, $2, $3).map(f)
    }
}


