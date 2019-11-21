//
//  UIColor+hexRGB.swift
//  ImageRandomizerApp
//
//  Created by Maksym Savisko on 4/1/19.
//  Copyright © 2019 Maksym Savisko. All rights reserved.
//

import UIKit.UIColor

public extension UIColor {
    // No alpha value is taken
    convenience init(hexRGB: Int) {
        let red = hexRGB >> 16
        let green = hexRGB >> 8 & 0xFF
        let blue = hexRGB & 0xFF
        self.init(
            red: CGFloat(red) / 0xFF,
            green: CGFloat(green) / 0xFF,
            blue: CGFloat(blue) / 0xFF,
            alpha: 1
        )
    }
}
