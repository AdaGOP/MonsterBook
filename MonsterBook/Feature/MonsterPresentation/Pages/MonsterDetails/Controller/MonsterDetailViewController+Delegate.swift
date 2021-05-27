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

extension MonsterDetailViewController {
    func refreshCell(at index: Int) {
        let indexPath = IndexPath(item: index, section: 0)
        monsterDetailView.monsterDetailTableView.reloadRows(at: [indexPath], with: .fade)
    }
}

extension MonsterDetailViewController: MonsterImageTableViewCellDelegate {
    func favoriteButtonDidTap() {
        guard let isFavorite = monster?.isFavorite else { return }
        monster?.isFavorite = !isFavorite
        refreshCell(at: 0)
    }
}

extension MonsterDetailViewController: PickerViewTableViewCellDelegate {
    func valueDidSet(type: MonsterType) {
        monster?.type = type
        refreshCell(at: 0)
    }
}
