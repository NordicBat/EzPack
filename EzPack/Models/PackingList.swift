//
//  PackingList.swift
//  EzPack
//
//  Created by Sabrina Tardio on 17/10/2018.
//  Copyright © 2018 BathroomTeam. All rights reserved.
//

import Foundation

class PackingList {
    let name: String
    var itemList: [ItemEntry]?
    
    init(name: String) {
        self.name = name
    }
}
