//
//  BlueTheme.swift
//  SwiftThemeDemo
//
//  Created by HomerIce on 2017/3/27.
//  Copyright © 2017年 HomerIce. All rights reserved.
//

import UIKit

class BlueTheme: NSObject, ThemeProtocol {
    var backgroundColor: UIColor {
        get {
            return UIColor.blue
        }
    }
    var titleTextColor: UIColor {
        get {
            return UIColor.black
        }
    }
    var detailTextColor: UIColor {
        get {
            return UIColor.white
        }
    }
}
