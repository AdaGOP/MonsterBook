//
//  DashboardViewController.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/05/21.
//

import UIKit
import Combine

class DashboardViewController: UIViewController {
    
    @IBOutlet weak var dashboardView: DashboardView!
    
    var dashboardViewModel = DashboardViewModel()
    
    var subscriptions: Set<AnyCancellable> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dashboardViewModel.state.sink { state in
            switch state {
            case .initialize:
                print("Dashboard is initialized")
            case .onAppear:
                self.setupDelegate()
            case .onRefresh:
                self.dashboardView.dashboardTableView.reloadData()
            }
        }
        .store(in: &subscriptions)
        dashboardViewModel.onAppear()
    }
    
    func setupDelegate() {
        dashboardView.setup(delegate: self)
        
        dashboardView.dashboardTableView.dataSource = self
        dashboardView.dashboardTableView.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toListofMonsters" {
            guard
                let destination = segue.destination as? ListOfMonstersViewController,
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
            destination.delegate = self
            destination.monster = monster
        }
    }
    
}
