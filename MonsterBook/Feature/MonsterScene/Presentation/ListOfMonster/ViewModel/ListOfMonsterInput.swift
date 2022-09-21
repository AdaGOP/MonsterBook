//
//  ListOfMonsterInput.swift
//  MonsterBook
//
//  Created by Handy Handy on 21/09/22.
//

import Foundation

protocol ListOfMonsterViewModelInput {
    func initialize()
    func didAppear(monsterType: MonsterType)
}
