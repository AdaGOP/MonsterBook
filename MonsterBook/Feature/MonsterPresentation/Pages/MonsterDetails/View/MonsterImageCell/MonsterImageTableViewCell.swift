//
//  MonsterImageTableViewCell.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 19/05/21.
//

import UIKit

class MonsterImageTableViewCell: UITableViewCell {
    
    @IBOutlet weak var monsterImage: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    var delegate: MonsterImageTableViewCellDelegate?
    
    func setImage(_ image: UIImage) {
        monsterImage.image = image
    }
    
    func setFavoriteButton(isFavorite: Bool) {
        if isFavorite {
            let image = UIImage(systemName: "heart.fill")
            likeButton.setImage(image, for: .normal)
            likeButton.tintColor = .red
        }else {
            let image = UIImage(systemName: "heart")
            likeButton.setImage(image, for: .normal)
            likeButton.tintColor = .systemBlue
        }
    }
    
    func setEnable(isEnable: Bool) {
        likeButton.isEnabled = isEnable
        if isEnable {
            likeButton.alpha = 0.5
        }
    }
    
    @IBAction func favoriteButtonDidTap() {
        delegate?.favoriteButtonDidTap()
    }
    
}
