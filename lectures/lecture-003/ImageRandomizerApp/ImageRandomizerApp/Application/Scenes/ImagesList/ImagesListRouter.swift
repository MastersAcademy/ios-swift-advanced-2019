//
//  ImagesListRouter.swift
//  ImageRandomizerApp
//
//  Created by Maksym Savisko on 4/1/19.
//  Copyright © 2019 Maksym Savisko. All rights reserved.
//

import UIKit

protocol ImagesListRouter: ViewRouter {
    func dismissView()
}

class ImagesListRouterImpl: ImagesListRouter {
    private weak var imageListViewController: ImagesListViewController?
    
    init(imageListViewController: ImagesListViewController) {
        self.imageListViewController = imageListViewController
    }
    
    func dismissView() {
        imageListViewController?
            .navigationController?
            .popViewController(animated: true)
    }
}
