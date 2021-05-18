//
//  ViewController.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 10/05/21.
//

import UIKit

class DashboardTableViewController: UITableViewController, CellDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// Add add button on right side of navigation
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add Monster", style: .plain, target: self, action: #selector(addMonster))
        
        // MARK: - Register NIB
        /// Register NIB for header cell
        tableView.register(UINib(nibName: "HeaderTableViewCell", bundle: nil), forCellReuseIdentifier: "headerCell")
        
        /// Register NIB for cell allocated for category collection view
        tableView.register(UINib(nibName: "CategoryTableViewCell", bundle: nil), forCellReuseIdentifier: "categoryCollectionCell")
        
        /// Register NIB for cell allocated for favorite collection view
        tableView.register(UINib(nibName: "FavoriteMonsterTableViewCell", bundle: nil), forCellReuseIdentifier: "favoriteMonsterCell")
    
        self.tableView.separatorColor = .clear
        
    }
    
    func performSegueFromCell(myData dataobject: AnyObject) {
        self.performSegue(withIdentifier: "toListofMonsters", sender: dataobject)
    }
    
    @objc func addMonster() {
        print("Monster Added")
    }

}

extension DashboardTableViewController {
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "headerCell", for: indexPath) as! HeaderTableViewCell
            cell.titleLabel.text = "Monster Categories"
            return cell
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCollectionCell", for: indexPath) as! CategoryTableViewCell
            cell.delegate = self
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "headerCell", for: indexPath) as! HeaderTableViewCell
            cell.titleLabel.text = "Favorite Monsters"
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "favoriteMonsterCell", for: indexPath) as! FavoriteMonsterTableViewCell
            
            return cell
        default:
            return UITableViewCell()
        }
        
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 1 {
            return 210
        } else if indexPath.row == 3 {
            return 500
        }
        return 20
        
    }
    
}


