//
//  ListOfMonstersTableViewController.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 16/05/21.
//

import UIKit

class ListOfMonstersTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "MonstersListTableViewCell", bundle: nil), forCellReuseIdentifier: "monsterListCell")
        
        self.tableView.separatorColor = .clear
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "monsterListCell", for: indexPath) as! MonstersListTableViewCell
        cell.monsterName.text = "Nama Monster"
        cell.monsterImage.image = #imageLiteral(resourceName: "Monster Merah")
        
        return cell
    }
    
}
