//
//  CollectionViewCell.swift
//  D03
//
//  Created by Jochum Wilen on 6/11/21.
//  Copyright © 2021 Jochum Wilen. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imagePic: UIImageView!
    
    func configure(with imageURL: String)
    {
        guard let url = URL(string: imageURL) else
        {
            return
        }
        DispatchQueue.global().async
            {[weak self] in
            if let data = try? Data(contentsOf: url)
            {
                if let image = UIImage(data: data)
                {
                    DispatchQueue.main.async
                        {
                            self?.imagePic.image = image
                        }
                }
            }
        }
    }
    

}
