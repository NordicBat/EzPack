//
//  Journey.swift
//  EzPack
//
//  Created by Sabrina Tardio on 17/10/2018.
//  Copyright © 2018 BathroomTeam. All rights reserved.
//

import Foundation

class Journey {
    var destination: String
    var departureDate: Date
    var returnDate: Date
    var luggageWeight: Double?
    var numberOfLadies: Int?
    var numberOfMen: Int?
    var guest: Bool?
    var leisure: Bool?
    var business: Bool?
    
    init(destination: String, departureDate: Date, returnDate: Date) {
        self.destination = destination
        self.departureDate = departureDate
        self.returnDate = returnDate
    }
    
    func daysBetweenDates() -> Int {
        let calendar = Calendar.current
        let components = calendar.dateComponents([Calendar.Component.day], from: departureDate, to: returnDate)
        return components.day!
    }
    
    
}
