//
//  MonsterImageTableViewCell.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 19/05/21.
//

import UIKit

class MonsterImageTableViewCell: UITableViewCell {
    
    @IBOutlet weak var monsterImage: UIImageView!
    @IBOutlet weak var btnLike: UIButton!
    
    var monster: Monster? {
        didSet {
            setupView()
        }
    }
    
    private func setupView() {
        monsterImage.layer.cornerRadius = 8
        monsterImage.image = monster?.image
    }
    
}
