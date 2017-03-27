//
//  BlackTheme.swift
//  SwiftThemeDemo
//
//  Created by HomerIce on 2017/3/27.
//  Copyright © 2017年 HomerIce. All rights reserved.
//

import UIKit

class BlackTheme: NSObject, ThemeProtocol {
    var backgroundColor: UIColor {
        get {
            return UIColor.black
        }
    }
    var titleTextColor: UIColor {
        get {
            return UIColor.white
        }
    }
    var detailTextColor: UIColor {
        get {
            return UIColor.lightGray
        }
    }
}
