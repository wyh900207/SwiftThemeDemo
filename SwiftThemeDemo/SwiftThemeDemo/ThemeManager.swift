//
//  ThemeManager.swift
//  SwiftThemeDemo
//
//  Created by HomerIce on 2017/3/27.
//  Copyright © 2017年 HomerIce. All rights reserved.
//

import UIKit

let ThemeNotification = NSNotification.Name("keyThemeNotification")

class ThemeManager: NSObject {
    // 当前主题
    var theme: ThemeProtocol = WhiteTheme() // 默认使用白色主题
    
    // 单例
    static var manager: ThemeManager? = nil
    static func shareInstance() -> ThemeManager {
        if manager == nil {
            manager = ThemeManager()
        }
        return manager!
    }
    
    static func switcherTheme(type: ThemeType) {
        ThemeManager.shareInstance().switcherTheme(type: type)
    }
    
    static func themeUpdate() {
        NotificationCenter.default.post(name: ThemeNotification, object: ThemeManager.shareInstance().theme)
    }
    
    private override init() {
    
    }
    
    private func switcherTheme(type: ThemeType) {
        self.theme = type.theme
        NotificationCenter.default.post(name: ThemeNotification, object: self.theme)
    }
}
