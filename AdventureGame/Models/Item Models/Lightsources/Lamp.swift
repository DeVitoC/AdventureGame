//
//  Lamp.swift
//  AdventureGame
//
//  Created by Christopher Devito on 6/9/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

import Foundation

class Lamp: Lightsource {
    override init(name: String, description: String, duration: Int = 40) {
        super.init(name: name, description: description, duration: duration)
    }
}
