//
//  DashboardInteractor.swift
//  MonsterBook
//
//  Created by zein rezky chandra on 14/09/22.
//

import Foundation

class DashboardInteractor: DashboardInteractorInputProtocol {
    
    weak var outputProtocol: DashboardInteractorOutputProtocol?
    
    private let service: MonsterRepository
    
    init(service: MonsterRepository) {
        self.service = service
    }
    
    func requestAddNewMonster(monster: Monster?) {
        
    }
    
    func requestEditExistingMonster(monster: Monster?) {
        
    }
    
    func requestListOfMonsters() {
        self.outputProtocol?.requestListOfMonstersSuccessfully(monsters: service.getMonsters().filter({ monster in
            monster.isFavorite
        }))
    }

}
