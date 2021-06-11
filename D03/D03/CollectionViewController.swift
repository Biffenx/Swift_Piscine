//
//  CollectionViewController.swift
//  D03
//
//  Created by Jochum Wilen on 6/11/21.
//  Copyright © 2021 Jochum Wilen. All rights reserved.
//

import UIKit

//protocol CVCDelegate {
//   func alert()
//}

class CollectionViewController: UICollectionViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesURL.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      
        var cell = UICollectionViewCell()
        
        if let imageCell = collectionView.dequeueReusableCell(withReuseIdentifier: "image", for: indexPath) as? CollectionViewCell {
         
             imageCell.delegate = self as? CVCDelegate
            
            imageCell.configure(with: imagesURL[indexPath.row])
        
//            imageCell.delegate = self as? CVCDelegate
            cell = imageCell
            
           
        
        }
        return cell
    }
    
    func alert()  {
//        print("Jocke")
        let alertController = UIAlertController(title: "Error", message: "Cannot acces to", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }
   
    
    
    

}
