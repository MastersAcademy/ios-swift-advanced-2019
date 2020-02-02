//
//  GitHub.swift
//  MAReposFramework
//
//  Created by Pavel Bondar on 27.01.2020.
//  Copyright © 2020 Pavel Bondar. All rights reserved.
//

import Foundation

public struct GitHub {
   public struct Repo: Decodable {
    public var archived: Bool
    public var description: String?
    public var htmlUrl: URL
    public var name: String
    public var pushedAt: Date?
  }

  public var fetchRepos = fetchRepos(onComplete:)
}

public func fetchRepos(onComplete completionHandler: (@escaping (Result<[GitHub.Repo], Error>) -> Void)) {
  dataTask("orgs/MastersAcademy/repos", completionHandler: completionHandler)
}

public func dataTask<T: Decodable>(_ path: String, completionHandler: (@escaping (Result<T, Error>) -> Void)) {
  let request = URLRequest(url: URL(string: "https://api.github.com/" + path)!)
  URLSession.shared.dataTask(with: request) { data, urlResponse, error in
    do {
      if let error = error {
        throw error
      } else if let data = data {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        formatter.locale = Current.locale
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
