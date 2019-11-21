//
//  ApiImage.swift
//  ImageRandomizerApp
//
//  Created by Maksym Savisko on 3/30/19.
//  Copyright © 2019 Maksym Savisko. All rights reserved.
//

import Foundation

struct ApiImage: Codable {
    let imageId: String
    let ratio: Double
    let imageUrl: String
    
    enum CodingKeys: String, CodingKey {
        case imageId = "image_id"
        case ratio
        case imageUrl = "image_url"
    }
}

extension ApiImage {
    var image: Image {
        return Image(imageId: imageId,
                     name: "",
                     imageURL: URL(string: imageUrl),
                     ratio: ratio)
    }
}
