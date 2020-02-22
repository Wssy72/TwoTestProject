//
//  MyTabBarController.swift
//  TwoTestProject
//
//  Created by Sergey on 21.02.2020.
//  Copyright © 2020 Sergey. All rights reserved.
//

import Foundation

class MyTabBarController: UITabBarController {
    
    let oneVC = MainViewController()
    
    oneVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
    
    let secondVC = TwoViewController()
    
    secondVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 1)
    
    let myTabBarItem = [oneVC, secondVC]
          }
