//
//  DashboardViewController+Delegate.swift
//  MonsterBook
//
//  Created by Handy Handy on 20/05/21.
//

import UIKit

extension DashboardViewController: DashboardViewDelegate {
    func addButtonDidTap() {
        performSegue(withIdentifier: "toMonsterDetailToAdd", sender: nil)
    }
}

extension DashboardViewController: MonsterDetailViewControllerDelegate {
    func onFinish() {
        dashboardViewModel.didRefresh()
    }
}
