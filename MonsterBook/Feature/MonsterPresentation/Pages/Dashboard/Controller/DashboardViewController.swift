//
//  DashboardViewController.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/05/21.
//

import UIKit

class DashboardViewController: UIViewController {
    
    @IBOutlet weak var dashboardTableView: UITableView!
    
    let monsterRepository = MonsterRepository(staticDataStore: SeederStaticDataStore())
    
    var monsters: [Monster]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        monsters = monsterRepository.getMonsters()
        
        dashboardTableView.dataSource = self
        dashboardTableView.delegate = self
        
        
        dashboardTableView.registerCell(type: CategoryTableViewCell.self, identifier: "categoryCollectionCell")
        
        dashboardTableView.registerCell(type: FavoriteMonsterTableViewCell.self, identifier: "favoriteMonsterCell")
        
    }
    
    
}
