//
//  ObservableError.swift
//  ImageRandomizerApp
//
//  Created by Maksym Savisko on 3/31/19.
//  Copyright © 2019 Maksym Savisko. All rights reserved.
//

import Foundation

enum ObservableError: LocalizedError {
    case instanceDeallocated
}

extension ObservableError {
    var errorDescription: String? {
        switch self {
        case .instanceDeallocated:
            return "Instance where observable created where deallocated and no events will be provided"
        }
    }
}
