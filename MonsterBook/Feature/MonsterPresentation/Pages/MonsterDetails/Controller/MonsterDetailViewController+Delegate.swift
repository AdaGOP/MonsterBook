//
//  MonsterDetailViewController+Delegate.swift
//  MonsterBook
//
//  Created by Handy Handy on 20/05/21.
//

import UIKit

extension MonsterDetailViewController: MonsterDetailViewDelegate {    
    func cancelDidTap() {
        self.dismiss(animated: true, completion: nil)
    }
    
    func saveDidTap() {
        updateMonster()
        guard let monster = monster else { return }
        monsterRepository.add(monster: monster)
        delegate?.onFinish()
        dismiss(animated: true, completion: nil)
    }
}

extension MonsterDetailViewController: MonsterImageTableViewCellDelegate {
    func favoriteButtonDidTap() {
        guard let isFavorite = monster?.isFavorite else { return }
        monster?.isFavorite = !isFavorite
        
        let indexPath = IndexPath(item: 0, section: 0)
        monsterDetailView.monsterDetailTableView.reloadRows(at: [indexPath], with: .none)
    }
}
