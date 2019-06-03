//
//  ViewController.swift
//  UICollectionView
//
//  Created by Denis Andreev on 5/31/19.
//  Copyright © 2019 353. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var myCollectionView: UICollectionView!
    var itemMenuArray : [Menu] = {
        var blankMenu = Menu()
        var blankMenu2 = Menu()
        blankMenu2.name = "Vodka"
        blankMenu2.imageName = "vodka"
        blankMenu.name = "Coca-Cola"
        blankMenu.imageName = "kola"
        return [blankMenu,blankMenu2]
    }()
    
    override func viewDidLoad() {
     myCollectionView.delegate = self
        myCollectionView.dataSource = self
    }


}

extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource{

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemMenuArray.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as? MenuCollectionViewCell {
            itemCell.menu = itemMenuArray[indexPath.row]
            return itemCell
        }
        return UICollectionViewCell()
    }
    
    
}
