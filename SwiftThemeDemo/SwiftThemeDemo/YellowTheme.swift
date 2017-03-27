//
//  YellowTheme.swift
//  SwiftThemeDemo
//
//  Created by HomerIce on 2017/3/27.
//  Copyright © 2017年 HomerIce. All rights reserved.
//

import UIKit

class YellowTheme: NSObject, ThemeProtocol {
    var backgroundColor: UIColor {
        get {
            return UIColor.yellow
        }
    }
    var titleTextColor: UIColor {
        get {
            return UIColor.red
        }
    }
    var detailTextColor: UIColor {
        get {
            return UIColor.lightGray
        }
    }
}
