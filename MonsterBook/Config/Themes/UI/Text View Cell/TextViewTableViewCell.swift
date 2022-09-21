//
//  TextViewTableViewCell.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 19/05/21.
//

import UIKit

class TextViewTableViewCell: UITableViewCell {

    @IBOutlet weak var formLabel: UILabel!
    @IBOutlet weak var formTextView: UITextView!
    @IBOutlet weak var formView: UIView!
    
    var monster: Monster? {
        didSet {
            setupView()
        }
    }
    
    private func setupView() {
        formView.layer.cornerRadius = 8
    }
    
}
