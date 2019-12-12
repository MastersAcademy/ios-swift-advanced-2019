//
//  Models.swift
//  MARepos
//
//  Created by Andrey Strib on 12/12/19.
//  Copyright © 2019 Andrey Strib. All rights reserved.
//


import UIKit

enum Result<Value, Error> {
  case success(Value)
  case failure(Error)
}
//
//protocol GitHubProtocol {
//  func fetchRepos(onComplete completionHandler: (@escaping (Result<[GitHub.Repo], Error>) -> Void))
//}

struct GitHub { //: GitHubProtocol {
  struct Repo: Decodable {
    var archived: Bool
    var description: String?
    var htmlUrl: URL
    var name: String
    var pushedAt: Date?
  }
  
  var fetchRepos = fetchRepos(onComplete:)
}


private func fetchRepos(onComplete completionHandler: (@escaping (Result<[GitHub.Repo], Error>) -> Void)) {
  dataTask("orgs/MastersAcademy/repos", completionHandler: completionHandler)
}

private func dataTask<T: Decodable>(_ path: String, completionHandler: (@escaping (Result<T, Error>) -> Void)) {
  let request = URLRequest(url: URL(string: "https://api.github.com/" + path)!)
  URLSession.shared.dataTask(with: request) { data, urlResponse, error in
    do {
      if let error = error {
        throw error
      } else if let data = data {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(formatter)
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        completionHandler(.success(try decoder.decode(T.self, from: data)))
      } else {
        fatalError()
      }
    } catch let finalError {
      completionHandler(.failure(finalError))
    }
  }.resume()
}

private func track(_ event: Analytics.Event) {
  print("Tracked", event)
}

struct Analytics {
  struct Event {
    var name: String
    var properties: [String: String]
    
    static func tappedRepo(_ repo: GitHub.Repo) -> Event {
      return Event(
        name: "tapped_repo",
        properties: [
          "repo_name": repo.name,
          "build": Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as? String ?? "Unknown",
          "release": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "Unknown",
          "screen_height": String(describing: UIScreen.main.bounds.height),
          "screen_width": String(describing: UIScreen.main.bounds.width),
          "system_name": UIDevice.current.systemName,
          "system_version": UIDevice.current.systemVersion,
        ]
      )
    }
  }
  
  var track = track(_:)
}

struct Environment {
  var analytics = Analytics()
  var date: () -> Date = Date.init
  var gitHub = GitHub()
}

var Current = Environment()

extension GitHub {
  static let mock = GitHub(fetchRepos: { callback in
    callback(
      .success(
        [
          GitHub.Repo(archived: false, description: "Masta's blog", htmlUrl: URL(string: "https://www.facebook.com/cherkasy.masters/")!, name: "Mastalog", pushedAt: Date(timeIntervalSinceReferenceDate: 547152021))
        ]
      )
    )
  })
}

extension Analytics {
  static let mock = Analytics(track: { event in
    print("Mock track", event)
  })
}

extension Environment {
  static let mock = Environment(
    analytics: .mock,
    date: { Date(timeIntervalSinceReferenceDate: 557152051) },
    gitHub: .mock
  )
}
