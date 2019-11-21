//
//  LocalPersistenceImagesGateway.swift
//  ImageRandomizerApp
//
//  Created by Maksym Savisko on 3/31/19.
//  Copyright © 2019 Maksym Savisko. All rights reserved.
//

import Foundation
import RealmSwift
import RxRealm
import RxSwift

protocol LocalPersistenceImagesGateway: ImagesGateway {
    func update(image: Image, parameters: UpdateImageParameters)
        -> Observable<Image>
    func add(images: [Image]) -> Observable<[Image]>
    func fetchLatestImage() -> Observable<Image>
}

protocol RealmDescribing: class {
    func write(withoutNotifying tokens: [NotificationToken],
               _ block: (() throws -> Void)) throws
    func objects<Element: Object>(_ type: Element.Type) -> Results<Element>
    func add(_ object: Object, update: Bool)
}

extension RealmDescribing {
    func write(withoutNotifying tokens: [NotificationToken] = [],
               _ block: (() throws -> Void)) throws {
        try write(withoutNotifying: tokens, block)
    }
}

extension Realm: RealmDescribing {}

enum LocalPersistenceError: Error {
    case couldNotWrite
    case couldnotRead
    case emptyResult
}

class LocalPersistenceImagesGatewayImpl: LocalPersistenceImagesGateway {
    private var realm: RealmDescribing
    
    init(realm: RealmDescribing) {
        self.realm = realm
    }
    
    private func withRealm<T>(_ operation: String, action: (RealmDescribing) throws -> T) -> T? {
        do {
            return try action(realm)
        } catch {
            return nil
        }
    }
    
    // MARK: ImagesGateway
    func fetchImages() -> Observable<[Image]> {
        let result = withRealm("getting images") { realm -> Observable<Results<RealmImage>> in
            let images = realm.objects(RealmImage.self)
            return Observable.collection(from: images)
        }
        
        guard let observableRealmImages = result else {
            return .error(LocalPersistenceError.couldnotRead)
        }
        
        return observableRealmImages
            .map { $0.map { $0.image } }
    }
    
    func update(image: Image, parameters: UpdateImageParameters)
        -> Observable<Image> {
            let result = withRealm("getting image by id") { realm
                -> Observable<RealmImage> in
                let image = realm
                    .objects(RealmImage.self)
                    .filter("imageId == %@", image.imageId).first
                
                guard
                    let realmImage = image
                else {
                    return .error(LocalPersistenceError.emptyResult)
                }
                
                if parameters.hasChanges {
                    try realm.write {
                        realmImage.populate(with: parameters)
                        realm.add(realmImage, update: true)
                    }
                }
                
                return Observable.from(object: realmImage)
            }
            
            guard let observableRealmImage = result else {
                return .error(LocalPersistenceError.couldnotRead)
            }
            
            return observableRealmImage.map { $0.image }
    }
    
    func add(images: [Image]) -> Observable<[Image]> {
        let result = withRealm("add or update") { realm
            -> Observable<Results<RealmImage>> in
            
            let realmImages = List<RealmImage>()
            images.forEach { image in
                let realmImage = RealmImage()
                realmImage.populate(with: image)
                realmImages.append(realmImage)
            }
            
            try realm.write {
                realmImages.forEach {
                    realm.add($0, update: true)
                }
            }
            
            let images = realm.objects(RealmImage.self)
            return Observable.collection(from: images)
        }
        
        guard let observableRealmImages = result else {
            return .error(LocalPersistenceError.couldNotWrite)
        }
        
        return observableRealmImages
            .map { $0.map { $0.image } }
    }
    
    func fetchLatestImage() -> Observable<Image> {
        let result = withRealm("fetch latest image") { realm
            -> Observable<RealmImage> in
            let realmImage = realm
                .objects(RealmImage.self)
                .filter("isLatest == %@", NSNumber(booleanLiteral: true))
                .first
            guard let validRealmImage = realmImage else {
                return .error(LocalPersistenceError.emptyResult)
            }
            return Observable.from(object: validRealmImage)
        }
        
        guard let observableRealmImage = result else {
            return .error(LocalPersistenceError.couldNotWrite)
        }
        
        return observableRealmImage.map { $0.image }
    }
}
