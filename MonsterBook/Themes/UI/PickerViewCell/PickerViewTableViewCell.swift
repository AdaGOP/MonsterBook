//
//  PickerViewTableViewCell.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 24/05/21.
//

import UIKit

class PickerViewTableViewCell: UITableViewCell, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var formLabel: UILabel!
    @IBOutlet weak var formView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        pickerView.delegate = self
    }
    
    func setLabel(text: String) {
        formLabel.text = text
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return MonsterType.allCases.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return MonsterType.allCases[row].rawValue
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
}
 
