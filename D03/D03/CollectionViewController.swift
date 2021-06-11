//
//  CollectionViewController.swift
//  D03
//
//  Created by Jochum Wilen on 6/11/21.
//  Copyright © 2021 Jochum Wilen. All rights reserved.
//

import UIKit


class CollectionViewController: UICollectionViewController {
    
    let dataSource: [String] = [
    "USA",
    "Russia",
    "United Kingdom",
    "Finland",
    "China",
    "Mexco",
    "India"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = UICollectionViewCell()
        
        if let countryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CollectionViewCell {
            countryCell.configure(with: dataSource[indexPath.row])
            
            cell = countryCell
        }
        return cell
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected country: \(dataSource[indexPath.row])")
    }
}
