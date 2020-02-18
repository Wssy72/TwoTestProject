//
//  TwoViewController.swift
//  TwoTestProject
//
//  Created by Sergey on 15.02.2020.
//  Copyright © 2020 Sergey. All rights reserved.
//

import Foundation
import UIKit

class TwoViewController: UIViewController {

    let labelTwoVC = UILabel(frame: .zero)
    var twoTabBarItem = UITabBarItem()
    
    override func viewDidLoad() {
    super.viewDidLoad()
    
    title = "TwoVC"
    view.backgroundColor = .orange
        
    let tabMain = TwoViewController()
    
    
    twoTabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
    tabMain.tabBarItem = twoTabBarItem
        
    labelTwoVC.frame = CGRect(x: 25, y: 50, width: 350, height: 50)
    labelTwoVC.text = "Добро пожаловать"
    labelTwoVC.textAlignment = .center
    view.addSubview(labelTwoVC)
        
    
    }
}
