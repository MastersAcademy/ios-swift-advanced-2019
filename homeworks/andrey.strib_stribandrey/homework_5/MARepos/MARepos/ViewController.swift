//
//  ViewController.swift
//  MARepos
//
//  Created by Andrey Strib on 12/12/19.
//  Copyright © 2019 Andrey Strib. All rights reserved.
//
// This code is copied from https://github.com/pointfreeco/episode-code-samples/tree/master/0016-dependency-injection
// and modified for Masters Academy iOS/Swift Adavanced course

import UIKit
import SafariServices

class ViewController: UITableViewController {
  var repos: [GitHub.Repo] = [] {
    didSet {
      self.tableView.reloadData()
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.title = "Masters Academy Repos"
    self.view.backgroundColor = .white
    
    Current.gitHub.fetchRepos { [weak self] result in
      DispatchQueue.main.async {
        switch result {
        case let .success(repos):
          self?.repos = repos
            .filter { !$0.archived }
            .sorted(by: {
              guard let lhs = $0.pushedAt, let rhs = $1.pushedAt else { return false }
              return lhs > rhs
            })
        case let .failure(error):
          let alert = UIAlertController(
            title: "Something went wrong",
            message: error.localizedDescription,
            preferredStyle: .alert
          )
          self?.present(alert, animated: true, completion: nil)
        }
      }
    }
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.repos.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let repo = self.repos[indexPath.row]
    
    let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
    cell.textLabel?.text = repo.name
    cell.detailTextLabel?.text = repo.description
    
    let dateComponentsFormatter = DateComponentsFormatter()
    dateComponentsFormatter.allowedUnits = [.day, .hour, .minute, .second]
    dateComponentsFormatter.maximumUnitCount = 1
    dateComponentsFormatter.unitsStyle = .abbreviated
    
    let label = UILabel()
    if let pushedAt = repo.pushedAt {
      label.text = dateComponentsFormatter.string(from: pushedAt, to: Current.date())
    }
    label.sizeToFit()
    
    cell.accessoryView = label
    
    return cell
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let repo = self.repos[indexPath.row]
    Current.analytics.track(.tappedRepo(repo))
    let vc = SFSafariViewController(url: repo.htmlUrl)
    self.present(vc, animated: true, completion: nil)
  }
}



//Current = .mock

//Current.gitHub.fetchRepos = { callback in
//  callback(.failure(NSError.init(domain: "masters.cherkasy", code: 1, userInfo: [NSLocalizedDescriptionKey: "Ooops!"])))
//}

//let reposViewController = ReposViewController()
//let reposViewController = ReposViewController.init(
//  date: { Date(timeIntervalSinceReferenceDate: 557152051) },
//  gitHub: GitHubMock.init(result: .failure(NSError.init(domain: "masters.cherkasy", code: 1, userInfo: [NSLocalizedDescriptionKey: "Ooops!"])))
//)


//import PlaygroundSupport
//let vc = UINavigationController(rootViewController: reposViewController)
//PlaygroundPage.current.liveView = vc
//PlaygroundPage.current.needsIndefiniteExecution = true


