//
//  ViewController.swift
//  Ex 01
//
//  Created by Jochum Wilen on 6/4/21.
//  Copyright © 2021 Jochum Wilen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBAction func clickButton(_ sender: UIButton) {
        label.text = "Hello World!"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

