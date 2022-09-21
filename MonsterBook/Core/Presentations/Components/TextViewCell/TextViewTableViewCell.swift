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
    
    var placeholder = "Type Your Description"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        formTextView.delegate = self
    }
    
    func setLabel(text: String) {
        placeholder = "Type Your \(text)"
        formTextView.text = placeholder
        formTextView.textColor = UIColor.systemGray3
        
        formLabel.text = text
    }
    
    func setTextView(text: String) {
        formTextView.text = text
        formTextView.textColor = UIColor.black
    }
    
    func setEnable(isEnable: Bool) {
        formTextView.isEditable = isEnable
        if isEnable {
            formTextView.textColor = UIColor.black
        }else {
            formTextView.textColor = UIColor.systemGray
        }
    }
 
}

extension TextViewTableViewCell: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        if (formTextView.text == placeholder)
        {
            formTextView.text = nil
            formTextView.textColor = UIColor.black
        }
    }

    func textViewDidEndEditing(_ textView: UITextView) {
        if formTextView.text.isEmpty
        {
            formTextView.text = placeholder
            formTextView.textColor = UIColor.systemGray3
        }
        textView.resignFirstResponder()
    }
}
