//
//  AppDelegate.swift
//  ImageRandomizerApp
//
//  Created by Maksym Savisko on 3/27/19.
//  Copyright © 2019 Maksym Savisko. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?)
        -> Bool {
            window = UIWindow(frame: UIScreen.main.bounds)
            let navigationController = UINavigationController()
            let imageDetailsViewController = ImageDetailsViewController() 
            imageDetailsViewController.loadViewIfNeeded()
            navigationController.viewControllers = [imageDetailsViewController]
            window?.rootViewController = navigationController
            window?.makeKeyAndVisible()
            return true
    }
}
