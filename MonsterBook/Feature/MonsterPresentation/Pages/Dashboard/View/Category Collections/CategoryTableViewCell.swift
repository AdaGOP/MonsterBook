//
//  CategoryTableViewCell.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 11/05/21.
//

import UIKit

protocol CellDelegate {
    func performSegueFromCell(myData dataobject: AnyObject)
}

class CategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    var delegate: CellDelegate!
    
    var categories = ["Fire", "Water", "Earth", "Air", "Metal", "Tree"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        
        /// Register NIB for collection view cell
        categoryCollectionView.register(UINib(nibName: "CategoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "categoryCell")

    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}

extension CategoryTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = categoryCollectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! CategoryCollectionViewCell
        cell.categoryLabel.text = categories[indexPath.row] + " Monster"
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        var passMonster = Monster(name: "Test Dulu Ya", age: 10, description: "Lorem ipsum yada yada")
        if self.delegate != nil {
            self.delegate.performSegueFromCell(myData: passMonster )
        }
        
    }
    
}
