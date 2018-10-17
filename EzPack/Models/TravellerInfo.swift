//
//  TravellerInfo.swift
//  EzPack
//
//  Created by Sabrina Tardio on 15/10/2018.
//  Copyright © 2018 BathroomTeam. All rights reserved.
//

import Foundation

class TravellerInfo {
    
    var luggageWeight : Int
    var nLadies : Int
    var nMan : Int
    var hotel : Bool
    var guest : Bool
    var leisure : Bool
    var business : Bool
    
    init(luggageWeight: Int, nLadies: Int, nMan: Int, hotel: Bool, guest: Bool, leisure: Bool, business: Bool) {
        self.luggageWeight = luggageWeight
        self.nLadies = nLadies
        self.nMan = nMan
        self.hotel = hotel
        self.guest = guest
        self.leisure = leisure
        self.business = business
    }
    
    
}
