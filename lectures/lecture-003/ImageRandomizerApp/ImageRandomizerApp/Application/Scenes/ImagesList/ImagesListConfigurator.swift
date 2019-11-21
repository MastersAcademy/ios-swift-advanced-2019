//
//  ImagesListConfigurator.swift
//  ImageRandomizerApp
//
//  Created by Maksym Savisko on 4/1/19.
//  Copyright © 2019 Maksym Savisko. All rights reserved.
//

import Foundation
import RealmSwift

protocol ImagesListConfigurator {
    func configure(imageListViewController: ImagesListViewController)
}

class ImagesListConfiguratorImpl: ImagesListConfigurator {
    var imageListPresenterDelegate: ImagesListPresenterDelegate?
    
    init(imageListPresenterDelegate: ImagesListPresenterDelegate?) {
        self.imageListPresenterDelegate = imageListPresenterDelegate
    }
    
    func configure(imageListViewController: ImagesListViewController) {
        // Gateways
        let apiClient = ApiClientImpl(urlSessionConfiguration: .default,
                                      completionHandlerQueue: .main)
        let apiImagesGateway = ApiImagesGatewayImpl(apiClient: apiClient)
        let localPersistanceImagesGateway = LocalPersistenceImagesGatewayImpl(realm: try! Realm())
        let cacheImagesGateway = CacheImagesGatewayImpl(apiImagesGateway: apiImagesGateway,
                                                        localPersistanceImagesGateway: localPersistanceImagesGateway)
        
        // Use cases
        let displayImagesListUseCase = DisplayImagesListUseCaseImpl(imagesGateway: cacheImagesGateway)
        
        // Dependencies
        let router = ImagesListRouterImpl(imageListViewController: imageListViewController)
        let presenter = ImagesListPresenterImpl(view: imageListViewController,
                                                router: router,
                                                displayImagesListUseCase: displayImagesListUseCase,
                                                delegate: imageListPresenterDelegate)
        imageListViewController.presenter = presenter
    }
}
