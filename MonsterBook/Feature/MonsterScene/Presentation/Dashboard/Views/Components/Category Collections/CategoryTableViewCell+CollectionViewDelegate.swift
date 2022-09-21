//
//  CategoryTableViewCell+CollectionViewDelegate.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/05/21.
//

import UIKit

extension CategoryTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoriesViewModel?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = categoryCollectionView.dequeueReusableCell(
            withReuseIdentifier: "categoryCell",
            for: indexPath) as! CategoryCollectionViewCell

        cell.viewModel = categoriesViewModel?[indexPath.row]
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let categoryViewModel = categoriesViewModel?[indexPath.row] else { return }
        delegate?.categoryDidTap(viewModel: categoryViewModel)
    }
    
    
    
}
