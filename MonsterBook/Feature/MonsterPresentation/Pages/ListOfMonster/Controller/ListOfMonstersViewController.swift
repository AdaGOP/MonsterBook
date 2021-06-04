//
//  ListOfMonstersTableViewController.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 16/05/21.
//

import UIKit

class ListOfMonstersViewController: UIViewController {
    
    @IBOutlet weak var listOfMonstersView: ListOfMonstersView!
    
    let monsterRepository = MonsterRepository.shared
    
    var monsterType: MonsterType?
    var typedMonsters: [Monster]?
    var monsterDetailDelegate: MonsterDetailViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        maintainData()
        listOfMonstersView.setup(viewController: self)
        
        navigationItem.title = monsterType?.rawValue
    }
    
    private func maintainData() {
        typedMonsters =  monsterRepository.getMonsters().filter({ monster in
            monster.type == monsterType
        })
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toMonsterDetails" {
            guard let destination = segue.destination as? MonsterDetailViewController,
                  let monster = sender as? Monster else { return }
            destination.monster = monster
            destination.delegate = monsterDetailDelegate
        }
    }
    
}
