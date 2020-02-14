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
    //var mySwitch = UISwitch(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.addSubview(myView)
        
        view.backgroundColor = .gray
        
        //myTextView.frame = CGRect(x: 60, y: 200, width: 200, height: 50)
        myTextView.text = "Введите текст"
        myTextView.backgroundColor = .orange
        //myTextView.sizeToFit()
        //myTextView
        myTextView.translatesAutoresizingMaskIntoConstraints = false
        myTextView.isScrollEnabled = false
        
        myView.addSubview(myTextView)
        
       // myView.addSubview(mySwitch)
        
        //debuging
        //myView.snp.makeConstraints { (make) -> Void in
           
          // make.leading.trailing.equalTo(0)
          // make.top.bottom.equalTo(0)

                  //  }
        myTextView.snp.makeConstraints { (make) -> Void in
           
            make.leading.trailing.equalTo(myView).offset(0)
           make.top.equalTo(100)
       
                    }
        
    }


}

