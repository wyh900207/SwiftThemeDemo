//
//  ThemeViewController.swift
//  SwiftThemeDemo
//
//  Created by HomerIce on 2017/3/27.
//  Copyright © 2017年 HomerIce. All rights reserved.
//

import UIKit

class ThemeViewController: SuperViewController {
    let cellReuseIdentifier: String = "cell"
    var tableView: UITableView!
    var selectedRowIndex: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupUI()
    }
    
    func setupUI() {
        self.tableView = UITableView(frame: self.view.bounds)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView.register(ThemeSwitcherCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        self.view.addSubview(self.tableView)
    }
    
    override func handleNotification(notification: NSNotification) {
        guard let theme = notification.object as? ThemeProtocol else {
            return
        }
        if self.tableView != nil {
            self.tableView.backgroundColor = theme.backgroundColor
        }
    }
}

extension ThemeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as? ThemeSwitcherCell else {
            return ThemeSwitcherCell(style: .default, reuseIdentifier: cellReuseIdentifier)
        }
        if indexPath.row == self.selectedRowIndex {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        
        cell.configCell(index: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedRowIndex = indexPath.row
        self.tableView.reloadData()
    }
}
