//
//  UIViewController+Load.swift
//  ImageRandomizerApp
//
//  Created by Maksym Savisko on 3/29/19.
//  Copyright © 2019 Maksym Savisko. All rights reserved.
//

import UIKit

public extension UIViewController {
    @inline (__always) func loadViewIfNeeded() {
        if !isViewLoaded { _ = view }
    }
}
