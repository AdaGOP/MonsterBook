//
//  DashboardViewController.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/05/21.
//

import UIKit

class DashboardViewController: UIViewController {
    
    @IBOutlet weak var dashboardTableView: UITableView!
    
    var monsterRepository: MonsterRepository?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dashboardTableView.dataSource = self
        dashboardTableView.delegate = self
    }
    
    
}
