//
//  DashboardViewController.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/05/21.
//

import UIKit

class DashboardViewController: UIViewController {
    
    @IBOutlet weak var dashboardView: DashboardView!
    
    let monsterRepository = MonsterRepository.shared
    var favoriteMonster: [Monster]?
    var presenter: DashboardPresenterProtocol?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let router = DashboardRouter()
        let interactor = DashboardInteractor(service: MonsterRepository(staticDataStore: MonsterStaticDataStore()))
        let presenter = DashboardPresenter(interface: self, interactor: interactor, router: router)
        self.presenter = presenter
        router.viewController = self
        interactor.outputProtocol = presenter

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        maintainData()
        
        dashboardView.setup(delegate: self)
        
        dashboardView.dashboardTableView.dataSource = self
        dashboardView.dashboardTableView.delegate = self
    }
    
    func maintainData() {
        presenter?.requestListOfMonsters()
    }

}

extension DashboardViewController: DashboardViewProtocol {
    func receiveMonsterLists(monsters: [Monster]?) {
        favoriteMonster = monsters
    }

    /// you can add loader capability that responsible to it's view
    /// - showLoading()
    /// - hideLoading()

    func showLoading() {

    }
    
    func hideLoading() {
        
    }
    
    /// you can typically handle what responses looks like to your user with proper experiences
    /// - showErrorMessage()
    /// - showSuccessMessage()
    func showErrorMessage() {
        
    }
    
    func showSuccessMessage() {
        
    }
    
    func addButtonDidTap() {
        presenter?.presentDetailOfMonsters(isDetail: false, monsterId: nil)
    }
}
