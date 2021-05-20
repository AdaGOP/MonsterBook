//
//  MonsterDetail.swift
//  MonsterBook
//
//  Created by Handy Handy on 20/05/21.
//

import UIKit

class MonsterDetailView: UIView {
    
    @IBOutlet weak var monsterDetailTableView: UITableView!
    @IBOutlet weak var monsterDetailNavigationBar: UINavigationBar!
    
    weak var delegate: MonsterDetailViewDelegate?
    
    func setup(delegate: MonsterDetailViewDelegate) {
        self.delegate = delegate
        
        monsterDetailTableView.registerCell(type: MonsterImageTableViewCell.self, identifier: "monsterImageCell")
        
        monsterDetailTableView.registerCell(type: TextFieldTableViewCell.self, identifier: "textFieldCell")
        
        monsterDetailTableView.registerCell(type: TextViewTableViewCell.self, identifier: "textViewCell")
    }
    
    @IBAction func cancelAddMonsterDidTap() {
        delegate?.cancelDidTap()
    }
    
    @IBAction func addMonsterDidTap() {
        delegate?.saveDidTap()
    }
    
    func removeNavigationBar() {
        monsterDetailNavigationBar.removeFromSuperview()
    }
}
