//
//  DeathTableViewCell.swift
//  ex00
//
//  Created by Jochum Wilen on 6/8/21.
//  Copyright © 2021 Jochum Wilen. All rights reserved.
//

import UIKit

class DeathTableViewCell: UITableViewCell {

   
    @IBOutlet weak var nameCell: UILabel!
    
    @IBOutlet weak var descriptionCell: UILabel!
    
    var record : (String, String)? {
        didSet {
            if let d = record {
                nameCell?.text = d.0
                descriptionCell?.text = d.1
            }
        }
    }

}
