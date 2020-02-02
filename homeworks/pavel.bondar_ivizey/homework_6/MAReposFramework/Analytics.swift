//
//  Analytics.swift
//  MAReposFramework
//
//  Created by Pavel Bondar on 27.01.2020.
//  Copyright © 2020 Pavel Bondar. All rights reserved.
//

import Foundation

struct Analytics {
  struct Event {
    var name: String
    var properties: [String: String]
    
    static func tappedRepo(_ repo: ReposViewController.Props.Repos) -> Event {
      return Event(
        name: "tapped_repo",
        properties: [
          "repo_name": repo.name,
          "build": Current.mainObject.object(forInfoDictionaryKey: "CFBundleVersion") as? String ?? "Unknown",
          "release": Current.mainObject.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "Unknown",
          "screen_height": String(describing: Current.mainScreen.bounds.height),
          "screen_width": String(describing: Current.mainScreen.bounds.width),
          "system_name": Current.currentDevice.systemName,
          "system_version": Current.currentDevice.systemName
        ]
      )
    }
  }
  
  var track = track(_:)
}

private func track(_ event: Analytics.Event) {
  print("Tracked", event)
}

extension Analytics {
  static let mock = Analytics(track: { event in
    print("Mock track", event)
  })
}
