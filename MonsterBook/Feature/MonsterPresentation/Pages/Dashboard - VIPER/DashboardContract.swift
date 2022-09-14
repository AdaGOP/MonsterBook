//
//  DashboardContract.swift
//  MonsterBook
//
//  Created by zein rezky chandra on 14/09/22.
//

import Foundation

/// This is where you start work with VIPER, you'll define all possible scenario within the screen through the protocol.
/// - Presenter protocol let you pass the information of what happen and what need to do during user interaction from `View`
/// - View protocol is where you'll interact with user, it's all about what user will see from the screen
/// - Interactor Input protocol is where you are interact to the data source, responsible to handle all request from apps to external sources
/// - Interactor Output protocol is where you will handle all the response from data source, responsible to pass the information from outside back to the presenter
/// - Router protocol is where you will handle all the navigation from screen to screen

protocol DashboardPresenterProtocol: AnyObject {
    func addingNewMonster()
    func presentListOfMonsters(monsterType: MonsterType?)
    func presentDetailOfMonsters(isDetail: Bool, monsterId: Monster?)
    func requestListOfMonsters()
}

protocol DashboardViewProtocol: AnyObject {
    func showLoading()
    func hideLoading()
    func showErrorMessage()
    func showSuccessMessage()
    func addButtonDidTap()
    func receiveMonsterLists(monsters: [Monster]?)
}

protocol DashboardInteractorInputProtocol: AnyObject {
    func requestAddNewMonster(monster: Monster?)
    func requestEditExistingMonster(monster: Monster?)
    func requestListOfMonsters()
}

protocol DashboardInteractorOutputProtocol: AnyObject {
    func requestAddNewMonsterSuccess(model: Monster?)
    func requestEditExistingMonsterSuccess(model: Monster?)
    func requestListOfMonstersSuccessfully(monsters: [Monster]?)
}

protocol DashboardRouterProtocol: AnyObject {
    func navigateToListOfMonsters(type: MonsterType?)
    func navigateToDetailOfMonsters(isDetail:Bool, monster: Monster?)
}
