//
//  ItemEntry.swift
//  EzPack
//
//  Created by Sabrina Tardio on 17/10/2018.
//  Copyright © 2018 BathroomTeam. All rights reserved.
//

import Foundation

class ItemEntry {
    var item: Item
    var amount: Int
    
    init(item: Item, amount: Int) {
        self.item = item
        self.amount = amount
    }
    
    func weight() -> Double {
        return item.weight * Double(amount)
    }
}
