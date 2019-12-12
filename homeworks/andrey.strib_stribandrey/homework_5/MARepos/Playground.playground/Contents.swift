import MAReposFramework
import UIKit

Current = .live

//Current.gitHub.fetchRepos = { callback in
//  callback(.failure(NSError.init(domain: "masters.cherkasy", code: 1, userInfo: [NSLocalizedDescriptionKey: "Ooops!"])))
//}

let reposViewController = ReposViewController()
//let reposViewController = ReposViewController.init(
//  date: { Date(timeIntervalSinceReferenceDate: 557152051) },
//  gitHub: GitHubMock.init(result: .failure(NSError.init(domain: "masters.cherkasy", code: 1, userInfo: [NSLocalizedDescriptionKey: "Ooops!"])))
//)


import PlaygroundSupport
let vc = UINavigationController(rootViewController: reposViewController)
PlaygroundPage.current.liveView = vc
PlaygroundPage.current.needsIndefiniteExecution = true



