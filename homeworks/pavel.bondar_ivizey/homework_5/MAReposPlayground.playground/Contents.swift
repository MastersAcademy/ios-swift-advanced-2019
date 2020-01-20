import UIKit
import MAReposFramework
import PlaygroundSupport

Current = .live

let reposViewController = ReposViewController()

let vc = UINavigationController(rootViewController: reposViewController)
PlaygroundPage.current.liveView = vc
PlaygroundPage.current.needsIndefiniteExecution = true
