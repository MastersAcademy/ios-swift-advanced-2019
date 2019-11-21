//
//  ChooseImage.swift
//  ImageRandomizerApp
//
//  Created by Maksym Savisko on 3/30/19.
//  Copyright © 2019 Maksym Savisko. All rights reserved.
//

import Foundation
import RxSwift

protocol ChooseImageUseCase {
    func chooseImage(parameters: ChooseImageParameters) -> Observable<Image>
}

enum ChooseImageParameters: Equatable {
    case random
    case latest
}

enum ChooseImageError: Error {
    case noImageFound
}

class ChooseImageUseCaseImpl: ChooseImageUseCase {
    private let cacheImagesGateway: CacheImagesGateway
    private let localPersistanceImagesGateway: LocalPersistenceImagesGateway
    private var disposeBag = DisposeBag()
    
    init(cacheImagesGateway: CacheImagesGateway,
         localPersistanceImagesGateway: LocalPersistenceImagesGateway) {
        self.cacheImagesGateway = cacheImagesGateway
        self.localPersistanceImagesGateway = localPersistanceImagesGateway
    }
    
    func chooseImage(parameters: ChooseImageParameters) -> Observable<Image> {
        return Observable<Image>
            .create { [weak self] observer in                
                switch parameters {
                case .random:
                    self?.handleRandomImageChoose(with: observer)
                case .latest:
                    self?.handleLatestImageChoose(with: observer)
                }
                
                return Disposables.create()
        }
    }
    
    private func handleRandomImageChoose(with observer: AnyObserver<Image>) {
        cacheImagesGateway.fetchImages()
            .subscribe(onNext: { images in
                guard
                    let image = images.randomElement()
                else {
                    observer.onError(ChooseImageError.noImageFound)
                    observer.onCompleted()
                    return
                }
                observer.onNext(image)
                observer.onCompleted()
            }, onError: { error in
                observer.onError(error)
                observer.onCompleted()
            }).disposed(by: disposeBag)
    }
    
    private func handleLatestImageChoose(with observer: AnyObserver<Image>) {
        localPersistanceImagesGateway
            .fetchLatestImage()
            .subscribe(onNext: { image in
                observer.onNext(image)
                observer.onCompleted()
            }, onError: { [weak self] error in
                self?.handleRandomImageChoose(with: observer)
            }).disposed(by: disposeBag)
    }
}
