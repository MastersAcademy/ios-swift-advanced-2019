//
//  Environment.swift
//  MAReposFramework
//
//  Created by Pavel Bondar on 27.01.2020.
//  Copyright © 2020 Pavel Bondar. All rights reserved.
//

import UIKit

public enum Result<Value, Error> {
  case success(Value)
  case failure(Error)
}

public var Current = Environment()

public struct Environment{
    var mainObject = Bundle.main
    var mainScreen = UIScreen.main
    var currentDevice = UIDevice.current
    var locale = Locale(identifier: "en_US_POSIX2")
    var analytics = Analytics()
    var date: () -> Date = Date.init
    public var gitHub = GitHub()
}

public extension Environment {
    static let live = Environment()
    static let mock = Environment(
        analytics: .mock,
        date: { Date(timeIntervalSinceReferenceDate: 557152051) },
        gitHub: .mock
    )
}
