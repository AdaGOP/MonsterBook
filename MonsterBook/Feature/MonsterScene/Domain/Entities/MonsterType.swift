//
//  MonsterType.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/09/22.
//

import UIKit

enum MonsterType: String, CaseIterable {
    case fire = "Fire"
    case water = "Water"
    case earth = "Earth"
    case air = "Air"
    case metal = "Metal"
    case tree = "Tree"
}


extension MonsterType {
    func getColor() -> UIColor? {
        switch self {
        case .fire:
            return MBColor.red
        case .water:
            return MBColor.purple
        case .earth:
            return MBColor.brown
        case .air:
            return MBColor.blue
        case .metal:
            return MBColor.gray
        case .tree:
            return MBColor.green
        }
    }
    
    func getImage() -> UIImage {
        switch self {
        case .fire:
            return #imageLiteral(resourceName: "Monster Merah")
        case .water:
            return #imageLiteral(resourceName: "Monster Biru Muda")
        case .earth:
            return #imageLiteral(resourceName: "Monster Kuning Bulet")
        case .air:
            return #imageLiteral(resourceName: "Monster Ungu Bulet")
        case .metal:
            return #imageLiteral(resourceName: "Monster Hitam")
        case .tree:
            return #imageLiteral(resourceName: "Monster Pohon")
        }
    }
}
