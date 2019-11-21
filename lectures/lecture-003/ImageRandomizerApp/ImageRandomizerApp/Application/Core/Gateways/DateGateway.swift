//
//  DateGateway.swift
//  ImageRandomizerApp
//
//  Created by Maksym Savisko on 3/31/19.
//  Copyright © 2019 Maksym Savisko. All rights reserved.
//

import Foundation

protocol DateGateway {
    func currentDate() -> Date
    func formattedStringCurrentDate() -> String
}
