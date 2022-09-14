//
//  DashboardViewControllerDelegate.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/05/21.
//

import Foundation

extension DashboardViewController: CategoryCollectionViewCellDelegate {
    func categoryDidTap(type: MonsterType?) {
        presenter?.presentListOfMonsters(monsterType: type)
    }
}
