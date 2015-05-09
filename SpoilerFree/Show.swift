//
//  Show.swift
//  SpoilerFree
//
//  Created by Philip Deisinger on 5/4/15.
//  Copyright (c) 2015 PDice. All rights reserved.
//

import Foundation
import UIKit

class Show {
    
    var name: String!
    var seasons: Int!
    var episodesPerSeason: Int!
    var currentSeason: Int!
    
    init(name: String, seasons: Int, episodesPerSeason: Int) {
        self.name = name
        self.seasons = seasons
        self.episodesPerSeason = episodesPerSeason
        
    }
}