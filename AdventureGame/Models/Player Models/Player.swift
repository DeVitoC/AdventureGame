//
//  PlayerModel.swift
//  AdventureGame
//
//  Created by Christopher Devito on 6/9/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

import Foundation

class Player {
    let name: String
    var currentRoom: Room
    var inventory: [String : Item]
    var equippedArmor: [String : Armor]
    var level: Int
    var strength: Int
    var wisdom: Int
    var armor: Int
    var maxHealth: Int
    var health: Int
    var experience: Int

    init(name: String, currentRoom: Room) {
        self.name = name
        self.currentRoom = currentRoom
        self.inventory = [:]
        self.equippedArmor = [:]
        self.level = 1
        self.strength = 0
        self.wisdom = 0
        self.armor = 0
        self.maxHealth = 0
        self.health = maxHealth
        self.experience = 0
    }
}
