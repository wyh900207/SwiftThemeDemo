//
//  SuperLabel.swift
//  SwiftThemeDemo
//
//  Created by HomerIce on 2017/3/27.
//  Copyright © 2017年 HomerIce. All rights reserved.
//

import UIKit

class SuperLabel: UILabel, ThemeManagerProtocol {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.changeTheme()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func changeTheme() {
        NotificationCenter.default.addObserver(self, selector: #selector(handleNotification(notification:)), name: ThemeNotification, object: nil)
    }
    
    func handleNotification(notification: NSNotification) {
        guard let theme = notification.object as? ThemeProtocol else {
            return
        }
        self.textColor = theme.titleTextColor
    }
    
    func updateTheme(theme: ThemeProtocol) -> UIColor {
        return theme.titleTextColor
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
        print("Label 释放了")
    }
    
}
