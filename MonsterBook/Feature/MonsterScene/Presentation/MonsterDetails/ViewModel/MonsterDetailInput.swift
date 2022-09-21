//
//  MonsterDetailInput.swift
//  MonsterBook
//
//  Created by Handy Handy on 21/09/22.
//

import Foundation

protocol MonsterDetailViewModelInput {
    func initialize()
    func didAppear(monster: Monster?)
    func didUpdate()
    func didSave()
    func change(name: String, age: String, description: String)
    func change(type: MonsterType)
    func change(isFavorite: Bool)
}
