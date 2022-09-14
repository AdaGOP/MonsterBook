//
//  DashboardPresenter.swift
//  MonsterBook
//
//  Created by zein rezky chandra on 14/09/22.
//

import Foundation

class DashboardPresenter: DashboardPresenterProtocol {
    
    weak var vc: DashboardViewProtocol?
    private let router: DashboardRouterProtocol?
    private let interactor: DashboardInteractorInputProtocol?
    
    init(interface: DashboardViewProtocol, interactor: DashboardInteractorInputProtocol, router: DashboardRouterProtocol) {
        self.vc = interface
        self.interactor = interactor
        self.router = router
    }
    
    func addingNewMonster() {
        
    }
    
    func presentListOfMonsters(monsterType: MonsterType?) {
        router?.navigateToListOfMonsters(type: monsterType)
    }
    
    func presentDetailOfMonsters(isDetail: Bool, monsterId: Monster?) {
        router?.navigateToDetailOfMonsters(isDetail: isDetail, monster: monsterId)
    }

    func requestListOfMonsters() {
        interactor?.requestListOfMonsters()
    }
    
}

extension DashboardPresenter: DashboardInteractorOutputProtocol {
    func requestListOfMonstersSuccessfully(monsters: [Monster]?) {
        vc?.receiveMonsterLists(monsters: monsters)
    }
    
    func requestAddNewMonsterSuccess(model: Monster?) {
        
    }
    
    func requestEditExistingMonsterSuccess(model: Monster?) {
        
    }
    
    
}
