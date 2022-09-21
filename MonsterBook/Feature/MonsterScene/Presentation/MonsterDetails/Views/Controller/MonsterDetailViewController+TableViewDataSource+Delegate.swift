//
//  MonsterDetailViewController+TableViewDataSource+Delegate.swift
//  MonsterBook
//
//  Created by Handy Handy on 20/05/21.
//

import UIKit

extension MonsterDetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    // MARK: - Table view data source
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "monsterImageCell", for: indexPath) as! MonsterImageTableViewCell
            cell.selectionStyle = .none
            cell.setEnable(isEnable: monsterDetailViewModel.isEnable.value)
            cell.delegate = self
            
            guard
                let image = monsterDetailViewModel.monster.value.type?.getImage()
            else { return cell }
            let isFavorite = monsterDetailViewModel.monster.value.isFavorite
            cell.setImage(image)
            cell.setFavoriteButton(isFavorite: isFavorite)
            
            return cell
        case 1,2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "textFieldCell", for: indexPath) as! TextFieldTableViewCell
            cell.selectionStyle = .none
            cell.setEnable(isEnable: monsterDetailViewModel.isEnable.value)
            
            if indexPath.row == 1 {
                cell.setLabel(text: "Name")
                cell.setHint(text: "Gloop")
                cell.formTextField.addTarget(self, action: #selector(nameTextFieldDidChange(_:)), for: .editingChanged)
            }else {
                cell.setLabel(text: "Age")
                cell.setHint(text: "3")
                cell.setNumberKeyboard()
                cell.formTextField.addTarget(self, action: #selector(ageTextFieldDidChange(_:)), for: .editingChanged)
            }
        
            guard
                let name = monsterDetailViewModel.monster.value.name,
                let age = monsterDetailViewModel.monster.value.age
            else { return cell }
            
            cell.setTextField(text: indexPath.row == 1 ? name : "\(age)")
            
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "pickerViewCell", for: indexPath) as! PickerViewTableViewCell
            cell.setEnable(isEnable: monsterDetailViewModel.isEnable.value)
            cell.setLabel(text: "Type")
            cell.delegate = self
            guard let type = monsterDetailViewModel.monster.value.type else { return cell }
            cell.setType(is: type)
            cell.selectionStyle = .none
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "textViewCell", for: indexPath) as! TextViewTableViewCell
            cell.selectionStyle = .none
            cell.setEnable(isEnable: monsterDetailViewModel.isEnable.value)
            cell.setLabel(text: "Description")
            guard let description = monsterDetailViewModel.monster.value.description else { return cell }
            cell.setTextView(text: description)
            return cell
        default:
            let cell = UITableViewCell()
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.row {
        case 0:
            return 210
        case 1,2:
            return 55
        case 3:
            return 105
        case 4:
            return 1000
        default:
            return 0
        }
    }
    
}

extension MonsterDetailViewController: UITableViewDelegate {
    
    
    
}
