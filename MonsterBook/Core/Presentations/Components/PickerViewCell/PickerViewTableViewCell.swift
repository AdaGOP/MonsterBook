//
//  PickerViewTableViewCell.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 24/05/21.
//

import UIKit

class PickerViewTableViewCell: UITableViewCell {
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var formLabel: UILabel!
    @IBOutlet weak var formView: UIView!
    
    var delegate: PickerViewTableViewCellDelegate?
    
    func setup(delegate: PickerViewTableViewCellDelegate) {
        self.delegate = delegate
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        pickerView.delegate = self
    }
    
    func setLabel(text: String) {
        formLabel.text = text
    }
    
    func setType(is type: MonsterType) {
        guard let index = MonsterType.allCases.firstIndex(of: type) else { return }
        pickerView.selectRow(index, inComponent: 0, animated: true)
    }
    
    func setEnable(isEnable: Bool) {
        pickerView.isUserInteractionEnabled = isEnable
        if isEnable {
            pickerView.alpha = 1
        }else {
            pickerView.alpha = 0.5
        }
    }
    
}

extension PickerViewTableViewCell: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return MonsterType.allCases.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return MonsterType.allCases[row].rawValue
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        delegate?.valueDidSet(type: MonsterType.allCases[row])
    }
    
}
 
