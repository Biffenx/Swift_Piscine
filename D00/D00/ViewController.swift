//
//  ViewController.swift
//  D00
//
//  Created by Jochum Wilen on 6/3/21.
//  Copyright © 2021 Jochum Wilen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    
    @IBAction func clickbutton(_ sender: UIButton) {
        helloLabel.text = "Hello World !"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

