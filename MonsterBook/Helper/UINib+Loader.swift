//
//  UINib+Loader.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/05/21.
//

import UIKit

extension UINib {
    static func nib(_ nibName: String) -> UINib {
        return UINib(nibName: nibName, bundle: nil)
    }
    
    static func loadSingleView(_ nibName: String, owner: Any?) -> UIView {
        return nib(nibName).instantiate(withOwner: owner, options: nil).first as! UIView
    }
}

extension UINib {
    class func loadView(_ owner: AnyObject) -> UIView {
        return loadSingleView("\(owner.self)", owner: owner)
    }
    
}

extension UITableView {
    func registerCell(type: UITableViewCell.Type, identifier: String) {
        let nib = UINib.nib("\(type)")
        self.register(nib, forCellReuseIdentifier: identifier)
    }
}

extension UICollectionView {
    func registerCell(type: UICollectionViewCell.Type, identifier: String) {
        let nib = UINib.nib("\(type)")
        self.register(nib, forCellWithReuseIdentifier: identifier)
    }
}
