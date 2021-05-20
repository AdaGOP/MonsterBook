//
//  MonsterDetailsTableViewController.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 14/05/21.
//

import UIKit

class MonsterDetailViewController: UIViewController {
    
    @IBOutlet weak var monsterDetailView: MonsterDetailView!
    
    let monsterRepository = MonsterRepository.shared
    var monster: Monster?
    var delegate: MonsterDetailViewControllerDelegate?
    var isAbleToEdit: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        maintainData()
        
        monsterDetailView.setup(delegate: self)
        
        monsterDetailView.monsterDetailTableView.dataSource = self
        monsterDetailView.monsterDetailTableView.delegate = self
        
    }
    
    private func maintainData() {
        if monster != nil {
            monsterDetailView.removeNavigationBar()
            self.navigationItem.rightBarButtonItem = self.editButtonItem
            isAbleToEdit = false
        }else {
            monster = Monster(name: nil, age: nil, description: nil, type: .earth)
        }
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        isAbleToEdit = isEditing
        updateMonster()
        if !editing {
            guard let monster = monster else { return }
            monsterRepository.update(monster: monster)
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
        monster?.name = name
        
        let ageIndexPath = IndexPath(row: 2, section: 0)
        guard
            let ageCell = monsterDetailView.monsterDetailTableView.cellForRow(at: ageIndexPath) as? TextFieldTableViewCell,
            let age = ageCell.formTextField.text  else { return }
        monster?.age = Int(age)
        
        let descriptionIndexPath = IndexPath(row: 3, section: 0)
        guard
            let descriptionCell = monsterDetailView.monsterDetailTableView.cellForRow(at: descriptionIndexPath) as? TextViewTableViewCell,
            let description = descriptionCell.formTextView.text  else { return }
        if description != descriptionCell.placeholder {
            monster?.description = description
        }
    }
}
