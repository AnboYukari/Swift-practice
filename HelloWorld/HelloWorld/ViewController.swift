//
//  ViewController.swift
//  HelloWorld
//
//  Created by 安保友香梨 on 2020/06/19.
//  Copyright © 2020 anbo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //(1)ラベルに文字を入れる
        outputLabel.text = "Hello Swift!"
    }

    @IBOutlet weak var outputLabel: UILabel!
    
    
}

