//
//  MonsterDetailsTableViewController.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 14/05/21.
//

import UIKit

class MonsterDetailsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.registerCell(type: MonsterImageTableViewCell.self, identifier: "monsterImageCell")
        
        tableView.registerCell(type: TextFieldTableViewCell.self, identifier: "textFieldCell")
        
        tableView.registerCell(type: TextViewTableViewCell.self, identifier: "textViewCell")
        
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "monsterImageCell", for: indexPath) as! MonsterImageTableViewCell
            cell.monsterImage.image = #imageLiteral(resourceName: "Monster Hijau")
            return cell
        case 1,2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "textFieldCell", for: indexPath) as! TextFieldTableViewCell
            cell.formLabel.text = indexPath.row == 1 ? "Name" : "Age"
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "textViewCell", for: indexPath) as! TextViewTableViewCell
            cell.formLabel.text = "Desc"
            return cell
        default:
            let cell = UITableViewCell()
            return cell
        }
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
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
