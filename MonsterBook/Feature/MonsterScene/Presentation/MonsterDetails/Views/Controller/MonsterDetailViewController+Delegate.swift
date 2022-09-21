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
        monsterDetailViewModel.didSave()
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

extension MonsterDetailViewController {
    @objc func nameTextFieldDidChange(_ textField: UITextField) {
        monsterDetailViewModel.change(name: textField.text)
    }
    
    @objc func ageTextFieldDidChange(_ textField: UITextField) {
        monsterDetailViewModel.change(age: textField.text)
    }
}

extension MonsterDetailViewController: MonsterImageTableViewCellDelegate {
    func favoriteButtonDidTap() {
        guard let isFavorite = monster?.isFavorite else { return }
        monsterDetailViewModel.change(isFavorite: !isFavorite)
        refreshCell(at: 0)
    }
}

extension MonsterDetailViewController: PickerViewTableViewCellDelegate {
    func valueDidSet(type: MonsterType) {
        monsterDetailViewModel.change(type: type)
        refreshCell(at: 0)
    }
}
