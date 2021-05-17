//
//  CategoryCollectionViewCell.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 12/05/21.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var categoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.layer.cornerRadius = 18
    }

}
