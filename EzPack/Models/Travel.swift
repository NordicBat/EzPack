//
//  Travel.swift
//  EzPack
//
//  Created by Sabrina Tardio on 15/10/2018.
//  Copyright © 2018 BathroomTeam. All rights reserved.
//

import Foundation

struct Travel {
    let destination: String
    let departureDate: Date
    let returnDate: Date
 
    
    init(destination: String, departureDate: Date, returnDate: Date){
        self.destination = destination
        self.departureDate = departureDate
        self.returnDate = returnDate
    }
}
