//
//  RealmImage.swift
//  ImageRandomizerApp
//
//  Created by Maksym Savisko on 3/31/19.
//  Copyright © 2019 Maksym Savisko. All rights reserved.
//

import Foundation
import RealmSwift

class RealmImage: Object {
    @objc dynamic var imageId: String = UUID().uuidString
    @objc dynamic var name: String = ""
    @objc dynamic var imageUrl: String = ""
    @objc dynamic var updatedAt: Date = Date()
    @objc dynamic var ratio: Double = 1.0
    @objc dynamic var isLatest: Bool = false
    
    override static func primaryKey() -> String? {
        return "imageId"
    }
}

extension RealmImage {
    var image: Image {
        return Image(imageId: imageId,
                     name: name,
                     imageURL: URL(string: imageUrl),
                     ratio: ratio)
    }
    
    func populate(with image: Image) {
        imageId = image.imageId
        name = image.name
        imageUrl = image.imageURL?.absoluteString ?? ""
        updatedAt = Date()
        ratio = image.ratio
    }
    
    func populate(with parameters: UpdateImageParameters) {
        if let newName = parameters.name {
            name = newName
        }
        
        if let newIsLatest = parameters.isLatest {
            isLatest = newIsLatest
        }
    }
}
