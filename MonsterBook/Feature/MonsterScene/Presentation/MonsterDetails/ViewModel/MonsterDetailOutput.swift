//
//  MonsterDetailOutput.swift
//  MonsterBook
//
//  Created by Handy Handy on 21/09/22.
//

import Foundation
import Combine

protocol monsterDetailViewModelOutput {
    var monster: CurrentValueSubject<Monster, Never> { get }
    var isEnable: CurrentValueSubject<Bool, Never> { get }
    var isNewMonster: Bool { get }
}
