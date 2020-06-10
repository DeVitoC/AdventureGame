//
//  Lightsource.swift
//  AdventureGame
//
//  Created by Christopher Devito on 6/9/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

import Foundation

class Lightsource: Item {
    var duration: Int
    var isOn: Bool

    init(name: String, description: String, duration: Int) {
        self.duration = duration
        self.isOn = false
        super.init(name: name, description: description)
    }
}
