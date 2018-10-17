//
//  DataManager.swift
//  EzPack
//
//  Created by Sabrina Tardio on 15/10/2018.
//  Copyright © 2018 BathroomTeam. All rights reserved.
//

import Foundation

class DataManager {
    
    // Make this singleton
    
    // array / set of journeys
    var allJourneys = [Journey]()
    
    func createDefaultLists() {
        let testTravel1 = Journey(destination: "Napoli", leavingDate: Date.init(), returnDate: Date.init(timeIntervalSince1970: 1539624824))
        allJourneys.append(testTravel1)
    }
    
    func getAllJourneys() -> [Journey] {
        return allJourneys
    }
    
    // functions to load / save data
    
}
