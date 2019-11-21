//
//  ImageTableViewCell.swift
//  ImageRandomizerApp
//
//  Created by Maksym Savisko on 4/1/19.
//  Copyright © 2019 Maksym Savisko. All rights reserved.
//

import UIKit
import RxSwift

protocol ImageCellView: class {
    func displayName(text: String?)
    func displayImage(with url: URL?)
    func displayPosition(_ position: Int)
}

class ImageTableViewCell: UITableViewCell, ImageCellView  {
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    
    private var disposeBag = DisposeBag()
    
    // MARK: Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        mainView.layer.cornerRadius = 12.0
        leftImageView.layer.cornerRadius = 10.0
        leftImageView.clipsToBounds = true
    }
    
    override func prepareForReuse() {
        disposeBag = DisposeBag()
        super.prepareForReuse()
    }
    
    // MARK: ImageCellView
    func displayName(text: String?) {
        rightLabel.text = text
    }
    
    func displayImage(with url: URL?) {
        leftImageView
            .setImage(url: url,
                      isIndicatorExist: true,
                      forseTransition: false)
            .subscribe().disposed(by: disposeBag)
    }
    
    func displayPosition(_ position: Int) {
        leftLabel.text = "\(position)"
    }
}
