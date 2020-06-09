//
//  Paladin.swift
//  AdventureGame
//
//  Created by Christopher Devito on 6/9/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

import Foundation
class Paladin: Player {
    override init(name: String, currentRoom: Room) {
        super.init(name: name, currentRoom: currentRoom)
        self.equippedArmor = [:]
        self.strength = 6
        self.wisdom = 6
        self.maxHealth = 10
        self.health = maxHealth
    }
}
