//
//  MyTabBarViewController.swift
//  TwoTestProject
//
//  Created by Sergey on 22.02.2020.
//  Copyright © 2020 Sergey. All rights reserved.
//

import UIKit

class MyTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let oneVC = MainViewController()
        
        oneVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        
        let secondVC = TwoViewController()
        
        secondVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 1)
        
        let myTabBarItem = [oneVC, secondVC]
        
        let allTabBArItem = myTabBarItem
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
