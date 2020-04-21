//
//  LaunchViewController.swift
//  NotesUIKit
//
//  Created by Igor Kravchenko on 17.04.2020.
//  Copyright © 2020 Igor Kravchenko. All rights reserved.
//

import UIKit.UIViewController

import UIKit.UIViewController

public class LaunchViewController: UIViewController, PropsAssignable {
    public var deallocator: Deallocator?
    
    lazy private var label = UILabel()
    lazy private var imageView = UIImageView()
    lazy private var activityIndicator = UIActivityIndicatorView(style: .medium)
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLabel()
        setupActivityIndicator()
    }
    
    private func setupLabel() {
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    private func setupActivityIndicator() {
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(activityIndicator)
        NSLayoutConstraint.activate([
            activityIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            activityIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100)
        ])
    }
    
    // MARK: Subscribtion
    
    // MARK: Props
    
    public struct Props: Codable, Equatable {
        public static func nop() -> LaunchViewController.Props {
            return Props(title: "", isBusy: false)
        }
        
        public let title: String
        public let isBusy: Bool
    }
    
    private var props: Props = .nop() {
        didSet {
            guard isViewLoaded else { return }
            guard props != oldValue else { return }
            view.setNeedsLayout()
        }
    }
    
    public func assignProps(_ props: Props) {
        self.props = props
    }
    
    public override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        render(props: props)
    }
    
    private func render(props: Props) {
        label.text = props.title
        props.isBusy ? activityIndicator.startAnimating() : activityIndicator.stopAnimating()
    }
}

