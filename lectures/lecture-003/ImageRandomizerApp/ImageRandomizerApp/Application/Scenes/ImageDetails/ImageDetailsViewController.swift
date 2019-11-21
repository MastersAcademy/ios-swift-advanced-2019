//
//  ImageDetailsViewController.swift
//  ImageRandomizerApp
//
//  Created by Maksym Savisko on 3/27/19.
//  Copyright © 2019 Maksym Savisko. All rights reserved.
//

import UIKit
import RxSwift
import RxGesture

protocol ImageDetailsView: class {
    func setup()
    func display(navigationTitle: String)
    func display(image: Image)
    func display(upperButtonTitle: String)
    func display(bottomButtonTitle: String)
    func displayInfoIcon(name: String)
    func endEditing()
    func displayNavigationBar(colorName: String)
    func displayNavigationBarTitle(colorName: String,
                                   fontSize: CGFloat)
    func displayBackButton(colorName: String)
    func hideNavigationBarSeparator()
}

class ImageDetailsViewController: UIViewController {
    // MARK: UI
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var upperButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    private var rightBarButton: UIBarButtonItem?
    
    private var disposeBag = DisposeBag()
    var configurator: ImageDetailsConfigurator = ImageDetailsConfiguratorImpl()
    var presenter: ImageDetailsPresenter?
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(imageDetailsViewController: self)
        presenter?.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter?.viewWillAppear()
    }
}

// MARK: ImageDetailsView
extension ImageDetailsViewController: ImageDetailsView {
    func setup() {
        setupNavigationItems()
        setupButtons()
        setupViews()
    }
    
    func display(navigationTitle: String) {
        navigationItem.title = navigationTitle
    }
    
    func display(image: Image) {
        imageView.setImage(url: image.imageURL,
                           isIndicatorExist: false)
            .subscribe(onNext: { isLoaded in })
            .disposed(by: disposeBag)
        nameTextField.text = image.name
    }
    
    func display(upperButtonTitle: String) {
        upperButton.setTitle(upperButtonTitle,
                             for: .normal)
    }
    
    func display(bottomButtonTitle: String) {
        bottomButton.setTitle(bottomButtonTitle,
                              for: .normal)
    }
    
    func displayInfoIcon(name: String) {
        rightBarButton?.image = UIImage(named: name)
        guard let button = rightBarButton else {
            return
        }
        button.rx
            .tap
            .asDriver()
            .throttle(.seconds(1), latest: true)
            .drive(onNext: { [weak self] in
                self?.presenter?.pressedRightBarItem()
            })
            .disposed(by: disposeBag)
    }
    
    func endEditing() {
        view.endEditing(true)
    }
    
    func displayNavigationBar(colorName: String) {
        navigationController?.navigationBar
            .barTintColor = UIColor(named: colorName)
    }
    
    func displayNavigationBarTitle(colorName: String,
                                   fontSize: CGFloat) {
        guard let color = UIColor(named: colorName) else { return }
        let font = UIFont.systemFont(ofSize: fontSize,
                                     weight: .regular)
        navigationController?.navigationBar
            .titleTextAttributes = [.foregroundColor: color,
                                    .font: font]
    }
    
    func displayBackButton(colorName: String) {
        navigationController?.navigationBar
            .tintColor = UIColor(named: colorName)
    }
    
    func hideNavigationBarSeparator() {
        self.navigationController?
            .navigationBar
            .setBackgroundImage(UIImage(), for: .default)
        self.navigationController?
            .navigationBar
            .shadowImage = UIImage()
    }
    
    // MARK: Setup
    private func setupNavigationItems() {
        rightBarButton = UIBarButtonItem(image: nil,
                                         style: .plain,
                                         target: nil,
                                         action: nil)
        navigationItem.rightBarButtonItem = rightBarButton
        
        let item = UIBarButtonItem(title: " ", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem = item
    }
    
    private func setupButtons() {
        bottomButton.rx
            .controlEvent([.touchUpInside])
            .asDriver()
            .throttle(.seconds(1), latest: true)
            .drive(onNext: { [weak self] _ in
                self?.presenter?.pressedBottomButton()
            }).disposed(by: disposeBag)
        
        upperButton.rx
            .controlEvent([.touchUpInside])
            .asDriver()
            .throttle(.seconds(1), latest: true)
            .drive(onNext: { [weak self] _ in
                self?.presenter?.pressedUpperButton()
            }).disposed(by: disposeBag)
    }
    
    private func setupViews() {
        view.rx
            .tapGesture()
            .when(.recognized)
            .subscribe(onNext: { [weak self] _ in
                self?.presenter?.pressedView(text: self?.nameTextField.text)
            }).disposed(by: disposeBag)
        
        nameTextField.rx
            .controlEvent([.editingDidEndOnExit])
            .asDriver()
            .drive(onNext: { [weak self] _ in
                self?.presenter?
                    .endEditingImageName(text: self?.nameTextField.text)
            })
            .disposed(by: disposeBag)
        
        imageView.layer.cornerRadius = 20.0
        bottomButton.layer.cornerRadius = 10.0
        upperButton.layer.cornerRadius = 10.0
        nameTextField.layer.cornerRadius = 10.0
        
        nameTextField.tintColor = R.color.blue()
    }
}
