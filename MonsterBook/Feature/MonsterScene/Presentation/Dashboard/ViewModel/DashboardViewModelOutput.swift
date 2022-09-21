//
//  DashboardViewModelOutput.swift
//  MonsterBook
//
//  Created by Handy Handy on 19/09/22.
//

import Foundation
import Combine

protocol DashboardViewModelOutput {
    var monsterTypeItem: CurrentValueSubject<[MonsterTypeViewModel], Never> { get }
    var monsterItem: CurrentValueSubject<[MonsterItemViewModel], Never> { get }
}
