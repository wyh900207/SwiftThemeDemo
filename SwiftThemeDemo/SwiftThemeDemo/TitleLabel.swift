//
//  TitleLabel.swift
//  SwiftThemeDemo
//
//  Created by HomerIce on 2017/3/27.
//  Copyright © 2017年 HomerIce. All rights reserved.
//

import UIKit

class TitleLabel: SuperLabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.font = UIFont.boldSystemFont(ofSize: 15)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateTheme(theme: ThemeProtocol) -> UIColor {
        return theme.titleTextColor
    }
}
