//
//  ImagesListPresenter.swift
//  ImageRandomizerApp
//
//  Created by Maksym Savisko on 4/1/19.
//  Copyright © 2019 Maksym Savisko. All rights reserved.
//

import Foundation
import RxSwift

protocol ImagesListPresenterDelegate: class {
    func imagesListPresenter(_ presenter: ImagesListPresenter,
                             didSelect image: Image)
}

protocol ImagesListPresenter: class {
    var router: ImagesListRouter { get }
    var numberOfImages: Int { get }
    var itemHeight: CGFloat { get }
    func viewDidLoad()
    func viewWillAppear()
    func didSelect(row: Int)
    func configure(cell: ImageCellView, forRow row: Int)
}

class ImagesListPresenterImpl: ImagesListPresenter {
    private weak var view: ImagesListView?
    var router: ImagesListRouter
    private let displayImagesListUseCase: DisplayImagesListUseCase
    private weak var delegate: ImagesListPresenterDelegate?
    private var disposeBag = DisposeBag()
    
    // Not private, because of test purpose
    var images: [Image] = []
    
    var numberOfImages: Int {
        return images.count
    }
    
    var itemHeight: CGFloat {
        return 160.0
    }
    
    init(view: ImagesListView,
         router: ImagesListRouter,
         displayImagesListUseCase: DisplayImagesListUseCase,
         delegate: ImagesListPresenterDelegate?) {
        self.view = view
        self.router = router
        self.displayImagesListUseCase = displayImagesListUseCase
        self.delegate = delegate
    }
    
    // MARK: ImagesListPresenter
    func viewDidLoad() {
        view?.setup()
        view?.display(navigationTitle: Localizable
            .imageListNavigationTitle())
        displayImagesListUseCase
            .displayImages()
            .subscribe(onNext: { [weak self] images in
                self?.images = images
                self?.view?.refreshImagesView()
            }).disposed(by: disposeBag)
    }
    
    func viewWillAppear() {
        view?.displayNavigationBar(colorName: R.color.lightGrey.name)
        view?.displayNavigationBarTitle(colorName: R.color.lightBlack.name,
                                        fontSize: 20.0)
    }
    
    
    func configure(cell: ImageCellView, forRow row: Int) {
        guard images.indices.contains(row) else { return }
        let image = images[row]
        let positionNumber = row + 1
        cell.displayName(text: image.name)
        cell.displayImage(with: image.imageURL)
        cell.displayPosition(positionNumber)
    }
    
    func didSelect(row: Int) {
        guard images.indices.contains(row) else { return }
        let image = images[row]
        delegate?.imagesListPresenter(self, didSelect: image)
    }
}
