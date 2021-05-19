//
//  ListOfMonstersTableViewController.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 16/05/21.
//

import UIKit

class ListOfMonstersTableViewController: UITableViewController {
    
    var monsterRepository = MonsterRepository(
        staticDataStore: SeederStaticDataStore()
    )
    var monsterType: MonsterType?
    var typedMonsters: [Monster]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        maintainData()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.registerCell(type: ItemMonsterTableViewCell.self, identifier: "itemMonsterCell")
        
        self.tableView.separatorColor = .clear
    }
    
    func maintainData() {
        typedMonsters =  monsterRepository.monsters.filter({ monster in
            monster.type == monsterType
        })
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return typedMonsters?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemMonsterCell", for: indexPath) as! ItemMonsterTableViewCell

        cell.monster = typedMonsters?[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(typedMonsters?[indexPath.row].name)
    }
    
}
