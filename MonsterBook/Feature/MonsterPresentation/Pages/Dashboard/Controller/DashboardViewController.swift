//
//  DashboardViewController.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/05/21.
//

import UIKit

class DashboardViewController: UIViewController {
    
    @IBOutlet weak var dashboardView: DashboardView!
    
    let monsterRepository = MonsterRepository.shared
    var favoriteMonster: [Monster]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        maintainData()
        
        dashboardView.setup(delegate: self)
        
        dashboardView.dashboardTableView.dataSource = self
        dashboardView.dashboardTableView.delegate = self
    }
    
    func maintainData() {
        favoriteMonster =
            monsterRepository.getMonsters().filter({ monster in
            monster.isFavorite
        })
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toListofMonsters" {
            guard
                let destination = segue.destination as? ListOfMonstersTableViewController,
                let type = sender as? MonsterType else { return }
            destination.monsterType = type
            destination.monsterDetailDelegate = self
        }else if segue.identifier == "toMonsterDetailToAdd" {
            guard let destination = segue.destination as? MonsterDetailViewController else { return }
            destination.delegate = self
        }else if segue.identifier == "toMonsterDetail" {
            guard
                let destination = segue.destination as? MonsterDetailViewController,
                let monster = sender as? Monster  else { return }
            destination.monster = monster
        }
    }
    
}
