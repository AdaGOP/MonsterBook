//
//  ListOfMonstersTableViewController.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 16/05/21.
//

import UIKit
import Combine

class ListOfMonstersViewController: UIViewController {
    
    @IBOutlet weak var listOfMonstersView: ListOfMonstersView!
    
    var monsterType: MonsterType?
    
    let listOfMonstersViewModel = ListOfMonsterViewModel()
    var subscriptions: Set<AnyCancellable> = []
    
    var monsterDetailDelegate: MonsterDetailViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        bindViewModel()
        setupView()
        
    }

    private func bindViewModel() {
        listOfMonstersViewModel.monsterItem
            .receive(on: DispatchQueue.main)
            .sink { [weak self] monsterItemViewModel in
                self?.updateMonsters()
            }
            .store(in: &subscriptions)
        
        listOfMonstersViewModel.didAppear(monsterType: monsterType ?? .fire)
    }
    
    private func updateMonsters() {
        listOfMonstersView.monsterListTableView.reloadData()
    }
    
    private func setupView() {
        listOfMonstersView.setup(viewController: self)
        navigationItem.title = monsterType?.rawValue
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
