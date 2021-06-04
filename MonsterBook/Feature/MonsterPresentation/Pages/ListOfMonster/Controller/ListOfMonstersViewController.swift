//
//  ListOfMonstersTableViewController.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 16/05/21.
//

import UIKit

class ListOfMonstersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var monsterListTableView: UITableView!
    
    let monsterRepository = MonsterRepository.shared
    var monsterType: MonsterType?
    var typedMonsters: [Monster]?
    var monsterDetailDelegate: MonsterDetailViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        maintainData()
        
        monsterListTableView.delegate = self
        monsterListTableView.dataSource = self
        
        monsterListTableView.registerCell(type: ItemMonsterTableViewCell.self, identifier: "itemMonsterCell")
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return typedMonsters?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemMonsterCell", for: indexPath) as! ItemMonsterTableViewCell

        cell.monster = typedMonsters?[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toMonsterDetails", sender: typedMonsters?[indexPath.row])
    }
    
}
