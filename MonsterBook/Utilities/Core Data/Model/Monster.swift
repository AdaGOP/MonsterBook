//
//  File.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 12/05/21.
//

import Foundation
import UIKit

enum MonsterType: String {
    case fire = "Fire"
    case water = "Water"
    case earth = "Earth"
    case air = "Air"
    case metal = "Metal"
    case tree = "Tree"
}

class Monster {
    var name: String?
    var age: Int?
    var description: String?
    var type: MonsterType?
    var image: UIImage?
    var isFavorite: Bool?
    
    init(name: String, age: Int, description: String, type: MonsterType, image: UIImage) {
        self.name = name
        self.age = age
        self.type = type
        self.image = image
        self.isFavorite = false
    }
    
}

