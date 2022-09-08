//
//  CategoryTableViewCell.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 11/05/21.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var categoryCollectionView: UICollectionView!

    var categories: [MonsterType]?
    var delegate: CategoryCollectionViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self

        /// Register NIB for collection view cell
        categoryCollectionView.registerCell(type: CategoryCollectionViewCell.self, identifier: "categoryCell")
        
    }

}

