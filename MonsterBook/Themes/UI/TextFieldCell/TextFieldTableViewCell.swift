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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        formTextField.delegate = self
    }
    
    func setLabel(text: String) {
        formLabel.text = text
    }
    
    func setTextField(text: String) {
        formTextField.text = text
    }
    
    func setNumberKeyboard() {
        formTextField.keyboardType = .numberPad
    }
    
    func setHint(text: String) {
        formTextField.placeholder = text
    }
    
    func setEnable(isEnable: Bool) {
        formTextField.isEnabled = isEnable
        if isEnable {
            formTextField.textColor = UIColor.black
        }else {
            formTextField.textColor = UIColor.systemGray
        }
    }
}

extension TextFieldTableViewCell: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        formTextField.resignFirstResponder()
    }
}
