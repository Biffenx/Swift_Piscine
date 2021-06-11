//
//  CollectionViewCell.swift
//  D03
//
//  Created by Jochum Wilen on 6/11/21.
//  Copyright © 2021 Jochum Wilen. All rights reserved.
//

import UIKit

protocol CVCDelegate {
   func alert()
}

class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imagePic: UIImageView!
    @IBOutlet weak var loader: UIActivityIndicatorView!
    
    var delegate: CVCDelegate?
    func configure(with imageURL: String)
    {
    
        loader.hidesWhenStopped = true
        loader.startAnimating()
        guard let url = URL(string: imageURL) else
        {
            return
        }
        DispatchQueue.global().async
            {[weak self] in
            let data = try? Data(contentsOf: url)
            if data == nil
            {
                self?.delegate?.alert()
                }
            else{

                if let image = UIImage(data: data!)
                {
                    DispatchQueue.main.async
                        {
                            self?.imagePic.image = image
                            self?.loader.stopAnimating()
                        }
                }
            }
        }
        
    }

}
