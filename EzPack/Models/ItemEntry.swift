//
//  ItemEntry.swift
//  EzPack
//
//  Created by Sabrina Tardio on 15/10/2018.
//  Copyright © 2018 BathroomTeam. All rights reserved.
//

import Foundation

class ItemEntry {
    var item : Item
    var amount : Int
    
    init(item: Item, amount: Int) {
        self.item = item
        self.amount = amount
    }
}

//extension ItemEntry: Hashable {
//    static func == (lhs: ItemEntry, rhs: ItemEntry) -> Bool {
//        return lhs.item == rhs.item
//    }
//
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(item)
//    }
//}
