//
//  DashboardViewController+TableViewDelegate.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/05/21.
//

import UIKit


extension DashboardViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Categories"
        }else {
            return "Favorite"
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .white
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }else {
            return monsters?.count ?? 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = dashboardTableView.dequeueReusableCell(
                withIdentifier: "categoryCollectionCell", for: indexPath) as! CategoryTableViewCell
            cell.categories = monsterRepository.monsterType
            cell.delegate = self
            return cell
        }else {
            let cell = dashboardTableView.dequeueReusableCell(
                withIdentifier: "favoriteMonsterCell", for: indexPath) as! FavoriteMonsterTableViewCell
            cell.selectionStyle = .none
            cell.monster = monsters?[indexPath.row]
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 245
        }else {
            return 136
        }
    }
    
    
}

extension DashboardViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            print(monsters?[indexPath.row].name)
        }
    }
}

