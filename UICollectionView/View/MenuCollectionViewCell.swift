//
//  MenuCollectionViewCell.swift
//  UICollectionView
//
//  Created by Denis Andreev on 5/31/19.
//  Copyright © 2019 353. All rights reserved.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var myLable: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    var menu : Menu? {
        didSet {
            myLable.text = menu?.name
            if let image = menu?.imageName {
                myImageView.image = UIImage(named: image)
            }
        }
    }
    
    
}
