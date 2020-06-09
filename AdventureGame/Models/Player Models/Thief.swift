//
//  Thief.swift
//  AdventureGame
//
//  Created by Christopher Devito on 6/9/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

import Foundation

class Thief: Player {
    override init(name: String, currentRoom: Room) {
        super.init(name: name, currentRoom: currentRoom)
        self.equippedArmor = [:]
        self.strength = 9
        self.wisdom = 0
        self.maxHealth = 8
        self.health = maxHealth
    }
}
