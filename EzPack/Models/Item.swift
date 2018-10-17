//
//  Item.swift
//  EzPack
//
//  Created by Sabrina Tardio on 17/10/2018.
//  Copyright © 2018 BathroomTeam. All rights reserved.
//

import Foundation

class Item {
    let name: String
    let weight: Double
    let sex: String
    var hotWeather: Bool?
    var coldWeather: Bool?
    
    init(name: String, weight: Double, sex: String) {
        self.name = name
        self.weight = weight
        self.sex = sex
    }
}
