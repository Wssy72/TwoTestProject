//
//  ViewController.swift
//  TwoTestProject
//
//  Created by Sergey on 11.02.2020.
//  Copyright © 2020 Sergey. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var myTextView = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .gray
        
        myTextView = UITextView()
        myTextView.frame = CGRect(x: 0, y: 0, width: 150, height: 50)
        myTextView.text = "Введите текст"
        
    }


}

