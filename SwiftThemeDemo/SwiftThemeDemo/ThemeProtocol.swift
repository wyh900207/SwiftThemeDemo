//
//  ThemeProtocol.swift
//  SwiftThemeDemo
//
//  Created by HomerIce on 2017/3/27.
//  Copyright © 2017年 HomerIce. All rights reserved.
//

import UIKit

protocol ThemeProtocol {
    var backgroundColor: UIColor { get }
    var titleTextColor: UIColor { get }
    var detailTextColor: UIColor { get }
}

enum ThemeType {
    case whiteTheme
    case blackTheme
    case greenTheme
    case redTheme
    case yellowTheme
    case blueTheme
    
    var theme: ThemeProtocol {
        get {
            switch self {
            case .whiteTheme:
                return WhiteTheme()
            case .blackTheme:
                return BlackTheme()
            case .greenTheme:
                return GreenTheme()
            case .redTheme:
                return RedTheme()
            case .yellowTheme:
                return YellowTheme()
            case .blueTheme:
                return BlueTheme()
            }
        }
    }
}
