//
//  MonstersListTableViewCell.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 13/05/21.
//

import UIKit

class MonstersListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var monsterImage: UIImageView!
    @IBOutlet weak var monsterName: UILabel!
    @IBOutlet weak var monsterDescription: UILabel!
    @IBOutlet weak var view: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        view.layer.cornerRadius = 18
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }
    
}
