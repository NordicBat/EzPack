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
//    var allJourneys = [Journey]()
//
//    func createDefaultLists() {
//        let testTravel1 = Journey(destination: "Napoli", leavingDate: Date.init(), returnDate: Date.init(timeIntervalSince1970: 1539624824))
//        allJourneys.append(testTravel1)
//    }
//
//    func getAllJourneys() -> [Journey] {
//        return allJourneys
//    }
    
    // functions to load / save data
    
    func createPackingLists() {
    
        let utilities = PackingList()
        
        utilities.itemList!.append(Item(name: "Face Towel", weight: 0.45, sex: "unisex"))
        utilities.itemList!.append(Item(name: "Bath Towel", weight: 0.80, sex: "unisex"))
        utilities.itemList!.append(Item(name: "Hairdrier", weight: 0.9, sex: "unisex"))
        
        
        let toiletries = PackingList()
        
        toiletries.itemList!.append(Item(name: "Deodorant", weight: 0.25, sex: "unisex"))
        toiletries.itemList!.append(Item(name: "Electric Shaver", weight: 0.4, sex: "male"))
        toiletries.itemList!.append(Item(name: "Nail Clipper", weight: 0.1, sex: "unisex"))
        toiletries.itemList!.append(Item(name: "Shampoo", weight: 0.4, sex: "unisex"))
        toiletries.itemList!.append(Item(name: "Conditioner", weight: 0.4, sex: "unisex"))
        toiletries.itemList!.append(Item(name: "Tootbrush", weight: 0.1, sex: "unisex"))
        toiletries.itemList!.append(Item(name: "Tootpaste", weight: 0.1, sex: "unisex"))
        toiletries.itemList!.append(Item(name: "Razor", weight: 0.1, sex: "unisex"))
        toiletries.itemList!.append(Item(name: "Shaving gel", weight: 0.2, sex: "male"))
        toiletries.itemList!.append(Item(name: "Tweezers", weight: 0.1, sex: "female"))
        toiletries.itemList!.append(Item(name: "Condoms", weight: 0.1, sex: "unisex"))
        
        
        
        let underwear = PackingList()
        
        underwear.itemList!.append(Item(name: "Underwear", weight: 0.2, sex: "unisex"))
        underwear.itemList!.append(Item(name: "Bra", weight: 0.2, sex: "female"))
        underwear.itemList!.append(Item(name: "Socks", weight: 0.2, sex: "unisex"))
        underwear.itemList!.append(Item(name: "Pijamas", weight: 0.4, sex: "unisex"))
        
        
        let clothes = PackingList()
        
        
        var shooes = PackingList()
        
        
        
        
        var technology = PackingList()
        
        technology.itemList!.append(Item(name: "Camera", weight: 0.5, sex: "unisex"))
        technology.itemList!.append(Item(name: "Camera Charger", weight: 0.1, sex: "unisex"))
        technology.itemList!.append(Item(name: "Phone", weight: 0.1, sex: "unisex"))
        technology.itemList!.append(Item(name: "Phone charger", weight: 0.1, sex: "unisex"))
        technology.itemList!.append(Item(name: "Watch", weight: 0.1, sex: "unisex"))
        technology.itemList!.append(Item(name: "Headphones", weight: 0.1, sex: "unisex"))
        technology.itemList!.append(Item(name: "Tablet", weight: 0.1, sex: "unisex"))
        technology.itemList!.append(Item(name: "Tablet charger", weight: 0.1, sex: "unisex"))
        
        var accessories = PackingList()
        var gym = PackingList()
        var water = PackingList()
        var snow = PackingList()
        var work = PackingList()
        var dinner = PackingList()
        var party = PackingList()
        var nature = PackingList()
        var hicking = PackingList()
        
        
    
    }
    
    
}
