//
//  SceneDelegate.swift
//  MARepo
//
//  Created by Pavel Bondar on 12.12.2019.
//  Copyright © 2019 Pavel Bondar. All rights reserved.
//

import UIKit
import MAReposFramework

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let reposViewController = ReposViewController()
        getData(reposView: reposViewController)
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = reposViewController
        window?.makeKeyAndVisible()
    }
    
    private func getData(reposView: ReposViewController) {
        Current.gitHub.fetchRepos { result in
            DispatchQueue.main.async {
                switch result {
                case let .success(repos):
                    var data = [ReposViewController.Props.Repos]()
                    repos.forEach { gitRepo in
                        data.append(ReposViewController.Props.Repos(
                            archived: gitRepo.archived,
                            description: gitRepo.description,
                            htmlUrl: gitRepo.htmlUrl,
                            name: gitRepo.name,
                            pushedAt: gitRepo.pushedAt)
                        )
                    }
                    reposView.props = ReposViewController.Props(title: "Masters Academy Repos", repos: data
                        .filter { !$0.archived }
                        .sorted(by: {
                            guard let lhs = $0.pushedAt, let rhs = $1.pushedAt else { return false }
                            return lhs > rhs
                        }))
                case let .failure(error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}

