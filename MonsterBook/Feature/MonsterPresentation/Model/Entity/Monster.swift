//
//  File.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 12/05/21.
//

import Foundation
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

class Monster {
    let id: String = UUID().uuidString
    var name: String?
    var age: Int?
    var description: String?
    var type: MonsterType?
    var isFavorite: Bool
    
    init(name: String?, age: Int?, description: String?, type: MonsterType) {
        self.name = name
        self.description = description
        self.age = age
        self.type = type
        self.isFavorite = false
    }
    
    func evolve() -> MonsterFirstEvolution?  {
        guard let unwrapType = type else { return nil }
        let numberOfClaw: Int = {
            switch unwrapType {
            case .fire,.water,.earth:
                return 5
            case .air, .metal , .tree:
                return 1
            }
        }()
        return MonsterFirstEvolution(monster: self, numberOfClaw: numberOfClaw)
    }
}



