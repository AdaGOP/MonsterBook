//
//  ModuleBuilder.swift
//  MonsterBook
//
//  Created by zein rezky chandra on 14/09/22.
//

import Foundation

class ModuleBuilder {
    
    static let shared = ModuleBuilder()
    
    private init() {}
    
    func createDashboardViewController() -> DashboardViewController {
        let dashboardVc = DashboardViewController()
        let router = DashboardRouter()
        let interactor = DashboardInteractor(service: MonsterRepository(staticDataStore: MonsterStaticDataStore()))
        let presenter = DashboardPresenter(interface: dashboardVc, interactor: interactor, router: router)
        dashboardVc.presenter = presenter
        router.viewController = dashboardVc
        interactor.outputProtocol = presenter
        return dashboardVc
    }

}
