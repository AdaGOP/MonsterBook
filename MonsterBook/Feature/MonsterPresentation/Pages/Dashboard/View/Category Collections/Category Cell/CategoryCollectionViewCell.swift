//
//  CategoryCollectionViewCell.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 12/05/21.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var categoryLabel: UILabel!
    
    var type: MonsterType? {
        didSet {
            setupView()
        }
    }
    
    func setupView() {
        self.layer.cornerRadius = 16
        self.backgroundColor = type?.getColor()
        categoryLabel.text = type?.rawValue
        
        applyAccessibility()
    }
    
    func applyAccessibility() {
        guard let value = type?.rawValue else { return }
        self.isAccessibilityElement = true
        self.accessibilityLabel = value
        self.accessibilityHint = "Double tap to discover \(value) monsters"
    }

}
