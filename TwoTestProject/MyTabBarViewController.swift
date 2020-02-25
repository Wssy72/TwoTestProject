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
        oneVC.title = "one"
        //oneVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        
        oneVC.tabBarItem = UITabBarItem(title: "MainVC", image: UIImage(named: "Home"), selectedImage: UIImage(named: "Home"))
        
        let secondVC = TwoViewController()
        oneVC.title = "two"
        secondVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 1)
        //secondVC.tabBarItem = UITabBarController(tabBarSystemItem: .search, tag: 1)
        //secondVC.tabBarItem = tabBarTwoItem
        viewControllers = [oneVC, secondVC]
        
  
        
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
