//
//  SubView.swift
//  SwiftThemeDemo
//
//  Created by HomerIce on 2017/3/27.
//  Copyright © 2017年 HomerIce. All rights reserved.
//

import UIKit

class SubView: UIView {

    var width: CGFloat {
        get {
            return self.frame.size.width
        }
    }
    
    var height: CGFloat {
        get {
            return self.frame.size.height
        }
    }
    
    var titleLabl: TitleLabel!
    var detailLabel: DetailLabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        self.titleLabl = TitleLabel(frame: CGRect(x: 0, y: 0, width: self.width, height: 18))
        self.detailLabel = DetailLabel(frame: CGRect(x: 0, y: 20, width: self.width, height: 15))
        self.addSubview(self.titleLabl)
        self.addSubview(self.detailLabel)
    }

}
