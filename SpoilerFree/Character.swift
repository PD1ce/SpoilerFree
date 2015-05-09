//
//  Character.swift
//  SpoilerFree
//
//  Created by Philip Deisinger on 5/4/15.
//  Copyright (c) 2015 PDice. All rights reserved.
//

import Foundation
import UIKit

class Character {
    var name: String!
    var house: House!
    var companions: NSMutableArray!
    var isAlive: Bool!
    var episodicInfo: [[String]]!
    
    init(name: String, house: House, isAlive: Bool, seasons: Int, episodesPerSeason: Int) {
        self.name = name
        self.house = house
        self.isAlive = isAlive
        self.episodicInfo = Array(count: seasons, repeatedValue: Array(count: episodesPerSeason, repeatedValue: "&"))
    }
}