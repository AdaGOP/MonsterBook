//
//  ListOfMonstersView.swift
//  MonsterBook
//
//  Created by Handy Handy on 04/06/21.
//

import UIKit

class ListOfMonstersView: UIView {
    
    @IBOutlet weak var monsterListTableView: UITableView!
    
    func setup(viewController: ListOfMonstersViewController) {
        
        monsterListTableView.delegate = viewController
        monsterListTableView.dataSource = viewController
        
        monsterListTableView.registerCell(type: ItemMonsterTableViewCell.self, identifier: "itemMonsterCell")
    }
    
}
