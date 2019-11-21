//
//  UpdateImage.swift
//  ImageRandomizerApp
//
//  Created by Maksym Savisko on 3/31/19.
//  Copyright © 2019 Maksym Savisko. All rights reserved.
//

import Foundation
import RxSwift

protocol UpdateImageUseCase {
    func update(image: Image, parameters: UpdateImageParameters)
        -> Observable<Image>
}

struct UpdateImageParameters: Equatable {
    let name: String?
    let isLatest: Bool?
}

extension UpdateImageParameters {
    var hasChanges: Bool {
        return name != nil || isLatest != nil
    }
}

class UpdateImageUseCaseImpl: UpdateImageUseCase {
    private let localPersistenceImagesGateway: LocalPersistenceImagesGateway
    
    init(localPersistenceImagesGateway: LocalPersistenceImagesGateway) {
        self.localPersistenceImagesGateway = localPersistenceImagesGateway
    }
    
    func update(image: Image,
                parameters: UpdateImageParameters) -> Observable<Image> {
        return localPersistenceImagesGateway.update(image: image,
                                                    parameters: parameters)
    }
}
