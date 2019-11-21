//
//  ApiImagesGateway.swift
//  ImageRandomizerApp
//
//  Created by Maksym Savisko on 3/30/19.
//  Copyright © 2019 Maksym Savisko. All rights reserved.
//

import Foundation
import RxSwift

protocol ApiImagesGateway: ImagesGateway { }

class ApiImagesGatewayImpl: ApiImagesGateway {
    let apiClient: ApiClient
    
    init(apiClient: ApiClient) {
        self.apiClient = apiClient
    }
    
    func fetchImages() -> Observable<[Image]> {
        let imagesApiRequest = ImagesApiRequest()
        let requestedApiImages = apiClient.execute(request: imagesApiRequest)
            as Observable<ApiImages>
        let images = requestedApiImages
            .map {
                $0.images.map { $0.image }
            }
        return images
    }
}
