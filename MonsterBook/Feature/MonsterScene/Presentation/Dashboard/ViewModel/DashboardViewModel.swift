//
//  DashboardViewModel.swift
//  MonsterBook
//
//  Created by Handy Handy on 19/09/22.
//

import Foundation
import Combine

protocol DashboardViewModelProtocol: DashboardViewModelInput, DashboardViewModelOutput {}

final class DashboardViewModel: DashboardViewModelProtocol {
    
    private let monsterRepository = MonsterRepository.shared
    private let fetchMonsterCategoryUseCase: FetchMonsterCategoriesUseCaseProtocol
    private let fetchFavoritedMonsterUseCase: FetchFavoritedMonsterUseCaseProtocol
    
    // MARK: - OUTPUT
    var monsterTypeItem = CurrentValueSubject<[MonsterTypeViewModel], Never>([])
    var monsterItem = CurrentValueSubject<[MonsterItemViewModel], Never>([])
    
    //MARK: - Init
    init() {
        self.fetchMonsterCategoryUseCase = FetchMonsterCategoriesUseCase(monsterRepository: monsterRepository)
        self.fetchFavoritedMonsterUseCase = FetchFavoritedMonsterUseCase(monsterRepository: monsterRepository)
    }
    
    //MARK: - Private
    
    private func addMonsterTypeItem() async {
        let monsterTypesResult = await self.fetchMonsterCategoryUseCase.execute()
        switch monsterTypesResult {
        case .success(let monstertypes):
            monsterTypeItem.send(
                monstertypes.map({ type in .init(type: type) })
            )
            
        case .failure(let error):
            // handle error here, you can create error output at code below.
            print(error.localizedDescription)
        }
    }
    
    private func validateFavoritedMonster() async {
        let favoritedMonstersResult = await self.fetchFavoritedMonsterUseCase.execute()
        switch favoritedMonstersResult {
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
    
    private func onLoad() async {
        await addMonsterTypeItem()
        await validateFavoritedMonster()
    }
}

// MARK: - INPUT. View event methods

extension DashboardViewModel {
    
    func initialize() {}
    
    func didAppear() {
        Task { await onLoad() }
    }
    
    func didRefresh() {
        Task { await validateFavoritedMonster() }
    }
}
