//
//  FavoriteMonsterTableViewCell.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 16/05/21.
//

import UIKit

class FavoriteMonsterTableViewCell: UITableViewCell {

    @IBOutlet weak var monsterImage: UIImageView!
    @IBOutlet weak var monsterNameLabel: UILabel!
    @IBOutlet weak var monsterTypeLabel: UILabel!
    @IBOutlet weak var mView: UIView!
    
    var monster: Monster? {
        didSet {
            setupView()
        }
    }
    
    private func setupView() {
        mView.layer.cornerRadius = 8
        mView.backgroundColor = .brown
        
        monsterNameLabel.text = monster?.name
        monsterTypeLabel.text = "Test label"
        
    }
    
}
