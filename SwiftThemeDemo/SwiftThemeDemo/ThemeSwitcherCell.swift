//
//  ThemeSwitcherCell.swift
//  SwiftThemeDemo
//
//  Created by HomerIce on 2017/3/27.
//  Copyright © 2017年 HomerIce. All rights reserved.
//

import UIKit

enum CellTitleType: Int {
    case White, Black, Green, Red, Yellow, Blue
    var title: String {
        get {
            switch self {
            case .White:
                return "White"
            case .Black:
                return "Black"
            case .Green:
                return "Green"
            case .Red:
                return "Red"
            case .Yellow:
                return "Yellow"
            case .Blue:
                return "Blue"
            }
        }
    }
    
    var detail: String {
        get {
            switch self {
            case .White:
                return "White detail"
            case .Black:
                return "Black detail"
            case .Green:
                return "Green detail"
            case .Red:
                return "Red detail"
            case .Yellow:
                return "Yellow detail"
            case .Blue:
                return "Blue detail"
            }
        }
    }
    
    var themeType: ThemeType {
        get {
            switch self {
            case .White:
                return .whiteTheme
            case .Black:
                return .blackTheme
            case .Red:
                return .redTheme
            case .Green:
                return .greenTheme
            case .Yellow:
                return .yellowTheme
            case .Blue:
                return .blueTheme
            }
        }
    }
}

class ThemeSwitcherCell: UITableViewCell {

    var customeView: SubView!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        self.backgroundColor = UIColor.clear
        self.addAllSubViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addAllSubViews() {
        customeView = SubView(frame: CGRect(x: 20, y: 8, width: 200, height: 50))
        self.contentView.addSubview(customeView)
    }
    
    func configCell(index: Int) {
        guard let cellType: CellTitleType = CellTitleType(rawValue: index) else {
            return
        }
        customeView.titleLabl.text = cellType.title
        customeView.detailLabel.text = cellType.detail
        
        if self.accessoryType == .checkmark {
            self.switcherTheme(type: cellType)
        }
    }
    
    func switcherTheme(type: CellTitleType) {
        ThemeManager.switcherTheme(type: type.themeType)
    }
}
