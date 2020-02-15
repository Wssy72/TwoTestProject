//
//  ViewController.swift
//  TwoTestProject
//
//  Created by Sergey on 11.02.2020.
//  Copyright © 2020 Sergey. All rights reserved.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    let myView = UIView(frame: UIScreen.main.bounds)
    var myTextView = UITextView(frame: .zero)
    var mySwitch = UISwitch()
    var oneLabel = UILabel(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.addSubview(myView)
        title = "MainVC"
        
        view.backgroundColor = .gray
        
        myTextView.text = "Введите текст"
        myTextView.textAlignment = .center
        myTextView.backgroundColor = .orange
        //myTextView.sizeToFit()
        myTextView.translatesAutoresizingMaskIntoConstraints = false
        myTextView.isScrollEnabled = false
        myView.addSubview(myTextView)
        
        mySwitch.setOn(false, animated: false)
        mySwitch.thumbTintColor = .green
        // Why don't work tintColor?
        mySwitch.tintColor = .red
        mySwitch.backgroundColor = .lightGray
        mySwitch.onTintColor = .orange
        mySwitch.addTarget(self, action: #selector(stateMySwitch), for: .valueChanged)
        myView.addSubview(mySwitch)
        
        oneLabel.text = "Switch Off"
        myView.addSubview(oneLabel)
        
        var mainTabBarItem = UITabBarItem()
        mainTabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        //mainTabBarItem.title = "MainVC"
        tabBarVC.self = mainTabBarItem
        
        myTextView.snp.makeConstraints { (make) -> Void in
        make.height.greaterThanOrEqualTo(25)
        make.width.equalTo(250)
        make.top.equalTo(myView).offset(100)
        make.centerX.equalTo(myView)
                }
        mySwitch.snp.makeConstraints { (make) in
        make.top.equalTo(myTextView.snp.bottom).offset(50)
        make.centerX.equalTo(myView)
        }
        oneLabel.snp.makeConstraints { (make) in
        make.size.equalTo(CGSize(width: 100, height: 20))
        make.top.equalTo(mySwitch.snp.bottom).offset(50)
        make.centerX.equalTo(myView)
        }
    }
    
    @objc func stateMySwitch() {
        if mySwitch.isOn {
            oneLabel.text = "Switch On"
        } else {
            oneLabel.text = "Switch Off"
        }
    }

}

