//
//  LocalDateGateway.swift
//  ImageRandomizerApp
//
//  Created by Maksym Savisko on 3/30/19.
//  Copyright © 2019 Maksym Savisko. All rights reserved.
//

import Foundation

protocol LocalDateGateway: DateGateway {}

class LocalDateGatewayImpl: LocalDateGateway {
    private let dateFormatter: DateFormatter
    
    init(dateFormatter: DateFormatter) {
        self.dateFormatter = dateFormatter
    }
    
    func currentDate() -> Date {
        return Date()
    }
    
    func formattedStringCurrentDate() -> String {
        return dateFormatter.string(from: currentDate())
    }
}
