//
//  DashboardViewControllerDelegate.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/05/21.
//

import Foundation

extension DashboardViewController: CategoryCollectionViewCellDelegate {
    
    func categoryDidTap(viewModel: MonsterTypeViewModel?) {
        self.performSegue(withIdentifier: "toListofMonsters", sender: viewModel?.type)
    }
}
