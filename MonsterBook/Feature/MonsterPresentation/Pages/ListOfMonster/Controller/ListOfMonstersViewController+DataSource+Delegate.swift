//
//  ListOfMonstersViewController+DataSource+Delegate.swift
//  MonsterBook
//
//  Created by Handy Handy on 04/06/21.
//

import UIKit

extension ListOfMonstersViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return typedMonsters?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemMonsterCell", for: indexPath) as! ItemMonsterTableViewCell

        cell.monster = typedMonsters?[indexPath.row]
        
        return cell
    }
}

extension ListOfMonstersViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toMonsterDetails", sender: typedMonsters?[indexPath.row])
    }
    
}
