//
//  ListOfMonsterOutput.swift
//  MonsterBook
//
//  Created by Handy Handy on 21/09/22.
//

import Foundation
import Combine

protocol ListOfMonsterViewModelOutput {
    var monsterItem: CurrentValueSubject<[MonsterItemViewModel], Never> { get }
}
