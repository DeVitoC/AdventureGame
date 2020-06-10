//
//  ModelTests.swift
//  AdventureGameTests
//
//  Created by Christopher Devito on 6/9/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

import XCTest
@testable import AdventureGame

class ModelTests: XCTestCase {

    func testWarriorModel() {
        let newWarrior = Warrior(name: "Christopher", currentRoom: Room(name: "Outside Entrance", description: "The entrance in front of the cave"))
        XCTAssertEqual(newWarrior.strength, 8)
        XCTAssertEqual(newWarrior.wisdom, 0)
        XCTAssertEqual(newWarrior.maxHealth, 10)
        XCTAssertEqual(newWarrior.health, 10)
        XCTAssertEqual(newWarrior.level, 1)
        XCTAssertEqual(newWarrior.armor, 0)
        XCTAssertEqual(newWarrior.experience, 0)
        XCTAssertEqual(newWarrior.name, "Christopher")
        XCTAssertEqual(newWarrior.currentRoom.name, "Outside Entrance")
    }

    func testMageModel() {
        let newMage = Mage(name: "Christopher", currentRoom: Room(name: "Outside Entrance", description: "The entrance in front of the cave"))
        XCTAssertEqual(newMage.strength, 0)
        XCTAssertEqual(newMage.wisdom, 9)
        XCTAssertEqual(newMage.maxHealth, 8)
        XCTAssertEqual(newMage.health, 8)
        XCTAssertEqual(newMage.level, 1)
        XCTAssertEqual(newMage.armor, 0)
        XCTAssertEqual(newMage.experience, 0)
        XCTAssertEqual(newMage.name, "Christopher")
        XCTAssertEqual(newMage.currentRoom.name, "Outside Entrance")
    }

    func testPaladinModel() {
        let newPaladin = Paladin(name: "Christopher", currentRoom: Room(name: "Outside Entrance", description: "The entrance in front of the cave"))
        XCTAssertEqual(newPaladin.strength, 6)
        XCTAssertEqual(newPaladin.wisdom, 6)
        XCTAssertEqual(newPaladin.maxHealth, 10)
        XCTAssertEqual(newPaladin.health, 10)
        XCTAssertEqual(newPaladin.level, 1)
        XCTAssertEqual(newPaladin.armor, 0)
        XCTAssertEqual(newPaladin.experience, 0)
        XCTAssertEqual(newPaladin.name, "Christopher")
        XCTAssertEqual(newPaladin.currentRoom.name, "Outside Entrance")
    }

    func testThiefModel() {
        let newThief = Thief(name: "Christopher", currentRoom: Room(name: "Outside Entrance", description: "The entrance in front of the cave"))
        XCTAssertEqual(newThief.strength, 9)
        XCTAssertEqual(newThief.wisdom, 0)
        XCTAssertEqual(newThief.maxHealth, 8)
        XCTAssertEqual(newThief.health, 8)
        XCTAssertEqual(newThief.level, 1)
        XCTAssertEqual(newThief.armor, 0)
        XCTAssertEqual(newThief.experience, 0)
        XCTAssertEqual(newThief.name, "Christopher")
        XCTAssertEqual(newThief.currentRoom.name, "Outside Entrance")
    }

    func testRoomModel() {
        let room1 = Room(name: "Room1", description: "The first room in the test")
        let room2 = Room(name: "Room2", description: "The second room in the test")
        let room3 = Room(name: "Room3", description: "The third room in the test")
        room1.nTo = room2
        room2.sTo = room1
        room1.eTo = room3
        room3.wTo = room1
        var room: Room? = room1
        XCTAssertEqual(room?.name, "Room1")
        room = room?.nTo ?? nil
        XCTAssertEqual(room?.name, "Room2")
        room = room?.sTo ?? nil
        XCTAssertEqual(room?.name, "Room1")
        room = room?.eTo ?? nil
        XCTAssertEqual(room?.name, "Room3")
        room = room?.wTo ?? nil
        XCTAssertEqual(room?.name, "Room1")
    }

    func testLampModel() {
        let newLamp = Lamp(name: "Lamp", description: "to light the night")
        XCTAssertEqual(newLamp.duration, 40)
        XCTAssertEqual(newLamp.description, "to light the night")
        XCTAssertEqual(newLamp.isOn, false)
        XCTAssertEqual(newLamp.name, "Lamp")
    }

    func testTorchModel() {
        let newTorch = Torch(name: "Torch", description: "to light the night")
        XCTAssertEqual(newTorch.duration, 20)
        XCTAssertEqual(newTorch.description, "to light the night")
        XCTAssertEqual(newTorch.isOn, false)
        XCTAssertEqual(newTorch.name, "Torch")
    }
}
