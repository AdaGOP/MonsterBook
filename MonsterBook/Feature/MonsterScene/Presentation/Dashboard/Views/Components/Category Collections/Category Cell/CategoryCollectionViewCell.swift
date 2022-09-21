//
//  CategoryCollectionViewCell.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 12/05/21.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var categoryLabel: UILabel!
    
    var viewModel: MonsterTypeViewModel? {
        didSet {
            setupView()
        }
    }
    
    func setupView() {
        self.layer.cornerRadius = 16
        self.backgroundColor = viewModel?.type.getColor()
        categoryLabel.text = viewModel?.type.rawValue
    }

}
