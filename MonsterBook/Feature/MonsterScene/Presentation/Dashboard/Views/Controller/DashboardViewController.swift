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
    
    let dashboardViewModel = DashboardViewModel()

    var subscriptions: Set<AnyCancellable> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindViewModel()
        setupView()
    }
    
    private func bindViewModel() {
        dashboardViewModel.monsterTypeItem
            .receive(on: DispatchQueue.main)
            .sink( receiveValue: { [weak self] monsterTypesViewModel in
                self?.updateMonsterTypesSection()
            })
            .store(in: &subscriptions)
        dashboardViewModel.monsterItem
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: { [weak self] monsterItemViewModels in
                self?.updateFavoritedMonsterSection()
            })
            .store(in: &subscriptions)
        dashboardViewModel.didAppear()
    }
    
    private func updateMonsterTypesSection() {
        let firstSection = IndexSet(integer: 0)
        dashboardView.dashboardTableView.reloadSections(firstSection, with: .automatic)
    }
    
    private func updateFavoritedMonsterSection() {
        let secondSection = IndexSet(integer: 1)
        dashboardView.dashboardTableView.reloadSections(secondSection, with: .automatic)
    }
    
    private func setupView() {
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
