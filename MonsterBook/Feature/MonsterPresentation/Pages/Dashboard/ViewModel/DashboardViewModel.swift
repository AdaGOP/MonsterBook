//
//  DashboardViewModel.swift
//  MonsterBook
//
//  Created by Handy Handy on 07/09/22.
//

import Foundation
import Combine

class DashboardViewModel {
    
    let monsterRepository = MonsterRepository.shared
    
    var favoriteMonster: [Monster] = []
    
    let state = CurrentValueSubject<DashboardViewModel.State, Never>(.initialize)
    
    let monsterType: [MonsterType] = [
        .fire, .water, .earth, .air, .metal, .tree
    ]
    
    enum State {
        case initialize
        case onAppear
        case onRefresh
    }
    
    func onAppear() {
        // modify your data here
        state.send(.onAppear)
    }
    
    func updateData() {
        favoriteMonster =
            monsterRepository.getMonsters().filter({ monster in
            monster.isFavorite
        })
        state.send(.onRefresh)
    }
    
}

