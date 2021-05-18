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

    var categories: [MonsterType]?
    var delegate: DashboardViewControllerDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self

        /// Register NIB for collection view cell
        categoryCollectionView.registerCell(type: CategoryCollectionViewCell.self, identifier: "categoryCell")
        
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}

