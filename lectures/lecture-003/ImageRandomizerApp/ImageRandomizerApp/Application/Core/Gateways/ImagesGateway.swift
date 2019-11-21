//
//  ImagesGateway.swift
//  ImageRandomizerApp
//
//  Created by Maksym Savisko on 3/30/19.
//  Copyright © 2019 Maksym Savisko. All rights reserved.
//

import Foundation
import RxSwift

protocol ImagesGateway: class {
    func fetchImages() -> Observable<[Image]>
}
