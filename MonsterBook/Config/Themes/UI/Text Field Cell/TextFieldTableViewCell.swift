//
//  TextFieldTableViewCell.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 19/05/21.
//

import UIKit

class TextFieldTableViewCell: UITableViewCell {

    @IBOutlet weak var formLabel: UILabel!
    @IBOutlet weak var formTextField: UITextField!
    @IBOutlet weak var formView: UIView!
    
    var monster: Monster? {
        didSet {
            setupView()
        }
    }
    
    private func setupView() {
        formView.layer.cornerRadius = 8
        formTextField.borderStyle = .none
    }
    
}
