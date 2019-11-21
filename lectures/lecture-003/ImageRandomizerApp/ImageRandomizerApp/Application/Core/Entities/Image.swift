//
//  Image.swift
//  ImageRandomizerApp
//
//  Created by Maksym Savisko on 3/27/19.
//  Copyright © 2019 Maksym Savisko. All rights reserved.
//

import Foundation

struct Image: Equatable {
    let imageId: String
    var name: String
    let imageURL: URL?
    let ratio: Double
}

extension Image {
    static var empty: Image {
        return Image.init(imageId: "",
                          name: "",
                          imageURL: nil,
                          ratio: 0.0)
    }
}
