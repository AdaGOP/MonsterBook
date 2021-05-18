//
//  UINib+Loader.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/05/21.
//

import UIKit

fileprivate extension UINib {
    static func nib(named nibName: String) -> UINib {
        return UINib(nibName: nibName, bundle: nil)
    }
    
    static func loadSingleView(_ nibName: String, owner: Any?) -> UIView {
        return nib(named: nibName).instantiate(withOwner: owner, options: nil).first as! UIView
    }
}

extension UINib {
    
    class func loadPlayerScoreboardMoveEditorView(_ owner: AnyObject) -> UIView {
        return loadSingleView("PlayerScoreboardMoveEditorView", owner: owner)
    }
    
}
