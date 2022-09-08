//
//  DashboardView.swift
//  MonsterBook
//
//  Created by Handy Handy on 20/05/21.
//

import UIKit

class DashboardView: UIView {
    
    @IBOutlet weak var dashboardTableView: UITableView!
    
    weak var delegate: DashboardViewDelegate?
    
    func setup(delegate: DashboardViewDelegate) {
        self.delegate = delegate
        
        dashboardTableView.registerCell(type: CategoryTableViewCell.self, identifier: "categoryCollectionCell")
        
        dashboardTableView.registerCell(type: ItemMonsterTableViewCell.self, identifier: "itemMonsterCell")
    }
    
    @IBAction func addButtonDidTap() {
        delegate?.addButtonDidTap()
    }
}
