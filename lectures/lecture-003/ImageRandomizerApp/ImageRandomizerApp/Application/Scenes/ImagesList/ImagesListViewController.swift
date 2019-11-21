//
//  ImagesListViewController.swift
//  ImageRandomizerApp
//
//  Created by Maksym Savisko on 4/1/19.
//  Copyright © 2019 Maksym Savisko. All rights reserved.
//

import UIKit

protocol ImagesListView: class {
    func setup()
    func display(navigationTitle: String)
    func displayNavigationBar(colorName: String)
    func displayNavigationBarTitle(colorName: String,
                                   fontSize: CGFloat)
    func refreshImagesView()
}

class ImagesListViewController: UIViewController, ImagesListView {
    // MARK: UI
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Dependencies
    var configurator: ImagesListConfigurator?
    var presenter: ImagesListPresenter?
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator?.configure(imageListViewController: self)
        presenter?.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter?.viewWillAppear()
    }
    
    // MARK: ImagesListView
    func setup() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(resource: R.nib.imageTableViewCell),
                           forCellReuseIdentifier: R.reuseIdentifier.imageTableViewCell.identifier)
        tableView.backgroundColor = R.color.lightGrey()
    }
    
    func display(navigationTitle: String) {
        navigationItem.title = navigationTitle
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
    
    func refreshImagesView() {
        tableView.reloadData()
    }
}

// MARK: UITableViewDataSource
extension ImagesListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return presenter?.numberOfImages ?? 0
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView
            .dequeueReusableCell(withIdentifier: R.reuseIdentifier.imageTableViewCell,
                                 for: indexPath) {
            presenter?.configure(cell: cell, forRow: indexPath.row)
            return cell
        }
        
        assertionFailure("Could not dequeue reusable ImageTableViewCell")
        return UITableViewCell()
    }
}

// MARK: - UITableViewDataSource
extension ImagesListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {
        presenter?.didSelect(row: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView,
                   heightForRowAt indexPath: IndexPath) -> CGFloat {
        return presenter?.itemHeight ?? 0.0
    }
}
