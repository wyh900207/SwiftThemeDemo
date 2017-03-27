//
//  SuperViewController.swift
//  SwiftThemeDemo
//
//  Created by HomerIce on 2017/3/27.
//  Copyright © 2017年 HomerIce. All rights reserved.
//

import UIKit

class SuperViewController: UIViewController, ThemeManagerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

        changeTheme()
    }
    
    func changeTheme() {
        NotificationCenter.default.addObserver(self, selector: #selector(handleNotification(notification:)), name: ThemeNotification, object: nil)
        ThemeManager.themeUpdate()
    }

    func handleNotification(notification: NSNotification) {
        guard let theme = notification.object as? ThemeProtocol else {
            return
        }
        self.view.backgroundColor = theme.backgroundColor
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
        print("ViewController 释放了")
    }
    
}
