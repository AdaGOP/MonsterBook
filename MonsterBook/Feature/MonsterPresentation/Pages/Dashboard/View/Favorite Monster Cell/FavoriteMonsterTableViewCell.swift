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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
