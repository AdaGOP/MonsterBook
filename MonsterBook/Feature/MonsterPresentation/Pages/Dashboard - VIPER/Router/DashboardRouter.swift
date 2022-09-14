//
//  DashboardRouter.swift
//  MonsterBook
//
//  Created by zein rezky chandra on 14/09/22.
//

import Foundation
import UIKit

class DashboardRouter: DashboardRouterProtocol, MonsterDetailViewControllerDelegate {
    
    weak var viewController: DashboardViewController?

    func navigateToListOfMonsters(type: MonsterType?) {
        let vc = UIStoryboard.init(name: "ListOfMonsters", bundle: Bundle.main).instantiateViewController(withIdentifier: "listMonsters") as? ListOfMonstersViewController
        vc?.monsterType = type
        vc?.monsterDetailDelegate = self

        viewController?.navigationController?.pushViewController(vc!, animated: true)
    }
    
    func navigateToDetailOfMonsters(isDetail: Bool, monster: Monster?) {
        let vc = UIStoryboard.init(name: "MonsterDetail", bundle: Bundle.main).instantiateViewController(withIdentifier: "detailMonsters") as? MonsterDetailViewController
        vc?.monster = monster
        vc?.isAbleToEdit = isDetail
        viewController?.navigationController?.pushViewController(vc!, animated: true)
    }

    func onFinish() {
        viewController?.maintainData()
        viewController?.dashboardView.dashboardTableView.reloadData()
    }

}
