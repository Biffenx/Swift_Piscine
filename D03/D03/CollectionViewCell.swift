//
//  CollectionViewCell.swift
//  D03
//
//  Created by Jochum Wilen on 6/11/21.
//  Copyright © 2021 Jochum Wilen. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var countryNameLabel: UILabel!
    
    func configure(with countryName: String) {
        countryNameLabel.text = countryName
    }
    
}
