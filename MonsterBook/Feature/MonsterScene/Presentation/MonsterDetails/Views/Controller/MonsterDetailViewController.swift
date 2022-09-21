//
//  MonsterDetailsTableViewController.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 14/05/21.
//

import UIKit
import Combine

class MonsterDetailViewController: UIViewController {
    
    @IBOutlet weak var monsterDetailView: MonsterDetailView!
    
    var monster: Monster?
    let monsterDetailViewModel = MonsterDetailViewModel()
    var subscriptions: Set<AnyCancellable> = []
    
    var delegate: MonsterDetailViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindViewModel()
        setupView()
        
    }
    
    private func bindViewModel() {
        monsterDetailViewModel.monster
            .receive(on: DispatchQueue.main)
            .sink { monster in print("monster on stream") }
            .store(in: &subscriptions)
        monsterDetailViewModel.isEnable
            .receive(on: DispatchQueue.main)
            .sink { [weak self] monster in
                self?.monsterDetailView.monsterDetailTableView.reloadData()
            }
            .store(in: &subscriptions)
        monsterDetailViewModel.didAppear(monster: monster)
    }
    
    
    private func setupView() {
        monsterDetailView.setup(delegate: self)
        
        monsterDetailView.monsterDetailTableView.dataSource = self
        monsterDetailView.monsterDetailTableView.delegate = self
        
        if !monsterDetailViewModel.isNewMonster {
            monsterDetailView.removeNavigationBar()
            self.navigationItem.rightBarButtonItem = self.editButtonItem
        }
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        monsterDetailViewModel.editing(is: editing)
        updateMonster()
        if !editing {
            monsterDetailViewModel.didUpdate()
            delegate?.onFinish()
            navigationController?.popToRootViewController(animated: true)
        }
        monsterDetailView.monsterDetailTableView.reloadData()
    }
    
    func updateMonster() {
        let nameIndexPath = IndexPath(item: 1, section: 0)
        guard
            let nameCell = monsterDetailView.monsterDetailTableView.cellForRow(at: nameIndexPath) as? TextFieldTableViewCell,
            let name = nameCell.formTextField.text  else { return }
        
        let ageIndexPath = IndexPath(row: 2, section: 0)
        guard
            let ageCell = monsterDetailView.monsterDetailTableView.cellForRow(at: ageIndexPath) as? TextFieldTableViewCell,
            let age = ageCell.formTextField.text  else { return }
        
        let descriptionIndexPath = IndexPath(row: 4, section: 0)
        guard
            let descriptionCell = monsterDetailView.monsterDetailTableView.cellForRow(at: descriptionIndexPath) as? TextViewTableViewCell,
            let description = descriptionCell.formTextView.text  else { return }
        
        monsterDetailViewModel.change(name: name, age: age, description: description)
    }
}
