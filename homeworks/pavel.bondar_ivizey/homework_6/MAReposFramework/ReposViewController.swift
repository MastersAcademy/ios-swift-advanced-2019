//
//  ViewController.swift
//  MARepo
//
//  Created by Pavel Bondar on 12.12.2019.
//  Copyright © 2019 Pavel Bondar. All rights reserved.
//

import UIKit
import SafariServices

public class ReposViewController: UITableViewController {
    public struct Props {
        var title: String
        var repos: [Repos]
        public struct Repos: Decodable {
            public var archived: Bool
            public var description: String?
            public var htmlUrl: URL
            public var name: String
            public var pushedAt: Date?
            
            public init(archived: Bool, description: String?, htmlUrl: URL, name: String, pushedAt: Date?) {
                self.archived = archived
                self.description = description
                self.htmlUrl = htmlUrl
                self.name = name
                self.pushedAt = pushedAt
            }
        }
        public init(title: String, repos: [Repos]) {
            self.title = title
            self.repos = repos
        }
    }
    
    public var props: Props = Props(title: "", repos: [Props.Repos]()) {
    didSet {
      self.title = props.title
      self.tableView.reloadData()
    }
  }
  
  override public func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.backgroundColor = .white
  }
  
  override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.props.repos.count
  }
  
  override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let repo = self.props.repos[indexPath.row]
    
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
  
  override public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let repo = self.props.repos[indexPath.row]
    Current.analytics.track(.tappedRepo(repo))
    let vc = SFSafariViewController(url: repo.htmlUrl)
    self.present(vc, animated: true, completion: nil)
  }
}
