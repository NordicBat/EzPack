//
//  Item.swift
//  EzPack
//
//  Created by Sabrina Tardio on 15/10/2018.
//  Copyright © 2018 BathroomTeam. All rights reserved.
//

import Foundation

class Item {
    
    var name : String
    var id : String
    
    init(name: String, id: String){
        self.name = name
        self.id = id
    }
    
}
    
extension Item: Equatable {
    static func == (lhs: Item, rhs: Item) -> Bool {
        return
            lhs.id == rhs.id
    }
}
    

