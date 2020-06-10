//
//  Room.swift
//  AdventureGame
//
//  Created by Christopher Devito on 6/9/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

import Foundation

class Room {
    let name: String
    let description: String
    var items: [String : Item]
    var monster: Monster?
    var nTo: Room?
    var sTo: Room?
    var eTo: Room?
    var wTo: Room?

    init(name: String, description: String) {
        self.name = name
        self.description = description
        self.items = [:]
        self.monster = nil
    }
}
