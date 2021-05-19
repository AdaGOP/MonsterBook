//
//  DashboardViewController.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/05/21.
//

import UIKit

class DashboardViewController: UIViewController {
    
    @IBOutlet weak var dashboardTableView: UITableView!
    
    var monsterRepository = MonsterRepository(
        staticDataStore: SeederStaticDataStore()
    )
    var favoriteMonster: [Monster]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        maintainData()
        
        dashboardTableView.dataSource = self
        dashboardTableView.delegate = self
        
        dashboardTableView.registerCell(type: CategoryTableViewCell.self, identifier: "categoryCollectionCell")
        
        dashboardTableView.registerCell(type: ItemMonsterTableViewCell.self, identifier: "itemMonsterCell")
        
    }
    
    func maintainData() {
        favoriteMonster = monsterRepository.monsters.filter({ monster in
            monster.isFavorite ?? false
        })
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toListofMonsters" {
            guard let destination = segue.destination as? ListOfMonstersTableViewController,
                  let type = sender as? MonsterType else { return }
            destination.monsterType = type
            
            /// Because of we only used static data, we need to pass the repository, if you are already
            /// use Core Data, its not necessary to pass the repository
            destination.monsterRepository = monsterRepository
        }
    }
    
}
