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
    
    let myView = UIView()
    var myTextView = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.addSubview(myView)
        
        view.backgroundColor = .gray
        
        myTextView.frame = CGRect(x: 0, y: 0, width: 150, height: 50)
        myTextView.text = "Введите текст"
        myTextView.translatesAutoresizingMaskIntoConstraints = false
        myView.addSubview(myTextView)
        
        //debuging
        myView.snp.makeConstraints { (make) -> Void in
           make.width.height.equalTo(250)
           make.center.equalTo(self.view)
        }
        
    }


}

