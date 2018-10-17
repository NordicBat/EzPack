//
//  Journey.swift
//  EzPack
//
//  Created by Sabrina Tardio on 15/10/2018.
//  Copyright © 2018 BathroomTeam. All rights reserved.
//

import Foundation

class Journey {
    
    var destination : String
    var leavingDate: Date
    var returnDate: Date
    var travellerInfo: TravellerInfo?
    var packingList: PackingList?
    
    init(destination: String, leavingDate: Date, returnDate: Date) {
        self.destination = destination
        self.leavingDate = leavingDate
        self.returnDate = returnDate
      
    }
    
    func calculateNumberOfDays() {
        
    }
    
}
