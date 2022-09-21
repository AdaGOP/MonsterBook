//
//  ListOfMonsterViewModel.swift
//  MonsterBook
//
//  Created by Handy Handy on 21/09/22.
//

import Foundation
import Combine

protocol ListOfMonsterViewModelProtocol: ListOfMonsterViewModelInput, ListOfMonsterViewModelOutput {}

final class ListOfMonsterViewModel: ListOfMonsterViewModelProtocol {
    
    private let monsterRepository = MonsterRepository.shared
    private let fetchMonsterByCategoryUseCase: FetchMonsterByCategoryUseCaseProtocol
    
    // MARK: - OUTPUT
    var monsterItem = CurrentValueSubject<[MonsterItemViewModel], Never>([])
    
    //MARK: - Init
    init() {
        self.fetchMonsterByCategoryUseCase = FetchMonsterByCategoryUseCase(monsterRepository: monsterRepository)
    }
    
    //MARK: - Private
    private func addMonsterItem(category: MonsterType) async {
        let monsterItemsResult = await self.fetchMonsterByCategoryUseCase.execute(type: category)
        switch monsterItemsResult {
        case .success(let monsters):
            monsterItem.send(
                monsters.map({ monster in
                        .init(monster: monster)
                })
            )
        case .failure(let error):
            // handle error here, you can create error output at code below.
            print(error.localizedDescription)
        }
    }
    
}

// MARK: - INPUT. View event methods

extension ListOfMonsterViewModel {
    
    func initialize() { }

    func didAppear(monsterType: MonsterType) {
        Task { await addMonsterItem(category: monsterType) }
    }
}

