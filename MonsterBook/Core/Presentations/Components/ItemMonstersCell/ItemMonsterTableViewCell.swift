//
//  FavoriteMonsterTableViewCell.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 16/05/21.
//

import UIKit

class ItemMonsterTableViewCell: UITableViewCell {

    @IBOutlet weak var monsterImage: UIImageView!
    @IBOutlet weak var monsterNameLabel: UILabel!
    @IBOutlet weak var monsterTypeLabel: UILabel!
    @IBOutlet weak var mView: UIView!
    
    var monsterItemViewModel: MonsterItemViewModel? {
        didSet {
            setupView()
        }
    }
    
    private func setupView() {
        mView.layer.cornerRadius = 8
        mView.backgroundColor = monsterItemViewModel?.type.getColor()
        monsterNameLabel.text = monsterItemViewModel?.name
        monsterTypeLabel.text = monsterItemViewModel?.type.rawValue
        monsterImage.image = monsterItemViewModel?.type.getImage()
    }
    
}
