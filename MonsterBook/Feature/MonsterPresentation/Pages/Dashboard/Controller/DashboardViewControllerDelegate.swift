//
//  DashboardViewControllerDelegate.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/05/21.
//

import Foundation

protocol DashboardViewControllerDelegate {
    func monsterCategoryDidTap(type: MonsterType)
    func favoriteMonsterDidTap(monster: Monster)
}

extension DashboardViewController: DashboardViewControllerDelegate {
    func monsterCategoryDidTap(type: MonsterType) {
        print("\(type.rawValue)")
        self.performSegue(withIdentifier: "toListofMonsters", sender: type)
    }
    
    func favoriteMonsterDidTap(monster: Monster) {
        print("\(monster.name)")
    }
    
}
