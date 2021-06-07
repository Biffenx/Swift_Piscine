//
//  ViewControllerB.swift
//  D02
//
//  Created by Jochum Wilen on 6/7/21.
//  Copyright © 2021 Jochum Wilen. All rights reserved.
//

import UIKit

class ViewControllerB: UIViewController {


    

    @IBAction func goToCTapped(_ sender: Any) {
        performSegue(withIdentifier: "segueToC", sender: self)
    }



}
