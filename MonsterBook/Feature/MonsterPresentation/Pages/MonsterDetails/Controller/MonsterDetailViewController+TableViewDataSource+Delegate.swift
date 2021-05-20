//
//  MonsterDetailViewController+TableViewDataSource+Delegate.swift
//  MonsterBook
//
//  Created by Handy Handy on 20/05/21.
//

import UIKit

extension MonsterDetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    // MARK: - Table view data source
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "monsterImageCell", for: indexPath) as! MonsterImageTableViewCell
            cell.selectionStyle = .none
            cell.setEnable(isEnable: isAbleToEdit)
            cell.delegate = self
            
            guard
                let image = monster?.type?.getImage(),
                let isFavorite = monster?.isFavorite else { return cell }
            cell.setImage(image)
            cell.setFavoriteButton(isFavorite: isFavorite)
            
            return cell
        case 1,2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "textFieldCell", for: indexPath) as! TextFieldTableViewCell
            cell.selectionStyle = .none
            cell.setEnable(isEnable: isAbleToEdit)
            
            if indexPath.row == 1 {
                cell.setLabel(text: "Name")
                cell.setHint(text: "Gloop")
            }else {
                cell.setLabel(text: "Age")
                cell.setHint(text: "3")
                cell.setNumberKeyboard()
            }
            
            guard
                let name = monster?.name,
                let age = monster?.age
            else { return cell }
            
            cell.setTextField(text: indexPath.row == 1 ? name : "\(age)")
            
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "textViewCell", for: indexPath) as! TextViewTableViewCell
            cell.selectionStyle = .none
            cell.setEnable(isEnable: isAbleToEdit)
            cell.setLabel(text: "Description")
            guard let description = monster?.description else { return cell }
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
            return 45
        case 3:
            return 200
        default:
            return 0
        }
    }
    
}

extension MonsterDetailViewController: UITableViewDelegate {
    
    
    
}
