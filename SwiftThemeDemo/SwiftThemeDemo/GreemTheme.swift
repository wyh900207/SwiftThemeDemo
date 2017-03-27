//
//  GreemTheme.swift
//  SwiftThemeDemo
//
//  Created by HomerIce on 2017/3/27.
//  Copyright © 2017年 HomerIce. All rights reserved.
//

import UIKit

class GreenTheme: NSObject, ThemeProtocol {
    var backgroundColor: UIColor {
        get {
            return UIColor.green
        }
    }
    var titleTextColor: UIColor {
        get {
            return UIColor.brown
        }
    }
    var detailTextColor: UIColor {
        get {
            return UIColor.black
        }
    }
}
