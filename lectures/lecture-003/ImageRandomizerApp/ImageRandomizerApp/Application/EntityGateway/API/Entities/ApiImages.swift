//
//  ApiImages.swift
//  ImageRandomizerApp
//
//  Created by Maksym Savisko on 3/30/19.
//  Copyright © 2019 Maksym Savisko. All rights reserved.
//

import Foundation

struct ApiImages: Codable {
    let images: [ApiImage]
    
    enum CodingKeys: String, CodingKey {
        case images
    }
}
