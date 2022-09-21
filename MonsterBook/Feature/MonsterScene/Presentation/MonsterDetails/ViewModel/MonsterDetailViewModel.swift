//
//  MonsterDetailViewModel.swift
//  MonsterBook
//
//  Created by Handy Handy on 21/09/22.
//

import Foundation
import Combine

protocol MonsterDetailViewModelProtocol: MonsterDetailViewModelInput, monsterDetailViewModelOutput {}

final class MonsterDetailViewModel: MonsterDetailViewModelProtocol {
    
    private let monsterRepository = MonsterRepository.shared
    private let createMonsterUseCase: CreateMonsterUseCaseProtocol
    private let updateMonsterUseCase: UpdateMonsterUseCaseProtocol
    
    // MARK: - OUTPUT
    var monster = CurrentValueSubject<Monster, Never>(
        Monster(name: nil, age: nil, description: nil, type: .fire)
    )
    var isEnable = CurrentValueSubject<Bool, Never>(true)
    var isNewMonster: Bool = true
    
    
    //MARK: - Init
    init() {
        self.createMonsterUseCase = CreateMonsterUseCase(monsterRepository: monsterRepository)
        self.updateMonsterUseCase = UpdateMonsterUseCase(monsterRepository: monsterRepository)
    }
    
    //MARK: - Private
    private func validateMonster(monster: Monster?) {
        guard let monster = monster else { return }
        self.isNewMonster = false
        self.isEnable.send(false)
        self.monster.send(monster)
    }
    
    private func createNewMonster() async {
        let createMonsterResult = await createMonsterUseCase.execute(monster: monster.value)
        switch createMonsterResult {
        case .success(_):
            print("Monster is saved")
        case .failure(let error):
            // handle error here, you can create error output at code below.
            print(error.localizedDescription)
        }
    }
    
    private func updateMonster() async {
        let updateMonsterResult = await updateMonsterUseCase.execute(monster: monster.value)
        switch updateMonsterResult {
        case .success(_):
            print("Monster is updated")
        case .failure(let error):
            // handle error here, you can create error output at code below.
            print(error.localizedDescription)
        }
    }
}


// MARK: - INPUT

extension MonsterDetailViewModel {
    
    func initialize() { }
    
    func didAppear(monster: Monster?) {
        self.validateMonster(monster: monster)
    }
    
    func didUpdate() {
        Task { await updateMonster() }
    }
    
    func didSave() {
        Task { await createNewMonster() }
    }
    
    func editing(is value: Bool) {
        self.isEnable.send(value)
    }
    
    func change(name: String, age: String, description: String) {
        let updatedMonster = monster.value
        updatedMonster.name = name
        updatedMonster.age = Int(age)
        updatedMonster.description = description
        monster.send(updatedMonster)
    }
    
    func change(name: String?) {
        let updatedMonster = monster.value
        updatedMonster.name = name
        monster.send(updatedMonster)
    }
    
    
    func change(age: String?) {
        let updatedMonster = monster.value
        guard let age = age else { return }
        updatedMonster.age = Int(age)
        monster.send(updatedMonster)
    }
    
    func change(description: String) {
        let updatedMonster = monster.value
        updatedMonster.description = description
        monster.send(updatedMonster)
    }
    
    func change(type: MonsterType) {
        let updatedMonster = monster.value
        updatedMonster.type = type
        monster.send(updatedMonster)
    }
    
    func change(isFavorite: Bool) {
        let updatedMonster = monster.value
        updatedMonster.isFavorite = isFavorite
        monster.send(updatedMonster)
    }
}
