//
//  DataManager.swift
//  EzPack
//
//  Created by Sabrina Tardio on 15/10/2018.
//  Copyright © 2018 BathroomTeam. All rights reserved.
//

import Foundation

class DataManager {
    
    static func mockData() -> [Journey] {
        return [
            Journey(destination: "Napoli", departureDate: Date.init(timeIntervalSince1970: 1539849601), returnDate: Date.init(timeIntervalSince1970: 1539849692)),
            Journey(destination: "Newcastle", departureDate: Date.init(timeIntervalSince1970: 1539849601), returnDate: Date.init(timeIntervalSince1970: 1539849692)),
            Journey(destination: "Potenza", departureDate: Date.init(timeIntervalSince1970: 1539849601), returnDate: Date.init(timeIntervalSince1970: 1539849692))
        ]
    }
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
        
        utilities.itemList.append(Item(name: "Face Towel", weight: 0.45, sex: "unisex"))
        utilities.itemList.append(Item(name: "Bath Towel", weight: 0.80, sex: "unisex"))
        utilities.itemList.append(Item(name: "Hairdrier", weight: 0.9, sex: "unisex"))
        
        
        let toiletries = PackingList()
        
        toiletries.itemList.append(Item(name: "Deodorant", weight: 0.25, sex: "unisex"))
        toiletries.itemList.append(Item(name: "Electric Shaver", weight: 0.4, sex: "male"))
        toiletries.itemList.append(Item(name: "Nail Clipper", weight: 0.1, sex: "unisex"))
        toiletries.itemList.append(Item(name: "Shampoo", weight: 0.4, sex: "unisex"))
        toiletries.itemList.append(Item(name: "Conditioner", weight: 0.4, sex: "unisex"))
        toiletries.itemList.append(Item(name: "Tootbrush", weight: 0.1, sex: "unisex"))
        toiletries.itemList.append(Item(name: "Tootpaste", weight: 0.1, sex: "unisex"))
        toiletries.itemList.append(Item(name: "Razor", weight: 0.1, sex: "unisex"))
        toiletries.itemList.append(Item(name: "Shaving gel", weight: 0.2, sex: "male"))
        toiletries.itemList.append(Item(name: "Tweezers", weight: 0.1, sex: "female"))
        toiletries.itemList.append(Item(name: "Condoms", weight: 0.1, sex: "unisex"))
        
        
        
        let underwear = PackingList()
        
        underwear.itemList.append(Item(name: "Underwear", weight: 0.2, sex: "unisex"))
        underwear.itemList.append(Item(name: "Bra", weight: 0.2, sex: "female"))
        underwear.itemList.append(Item(name: "Socks", weight: 0.2, sex: "unisex"))
        underwear.itemList.append(Item(name: "Pijamas", weight: 0.4, sex: "unisex"))
        
        
        let clothes = PackingList()
        
        clothes.itemList.append(Item(name: "Belt", weight: 0.3, sex: "unisex"))
        clothes.itemList.append(Item(name: "Casual pants", weight: 0.4, sex: "unisex"))
        clothes.itemList.append(Item(name: "Casual shirts", weight: 0.2, sex: "unisex"))
        clothes.itemList.append(Item(name: "Light jacket", weight: 0.4, sex: "unisex"))
        clothes.itemList.append(Item(name: "Sweater", weight: 0.5, sex: "unisex"))
        clothes.itemList.append(Item(name: "Tank top", weight: 0.2, sex: "unisex"))
        clothes.itemList.append(Item(name: "Shorts", weight: 0.3, sex: "unisex"))
        clothes.itemList.append(Item(name: "Cotton pants", weight: 0.3, sex: "female"))
        clothes.itemList.append(Item(name: "Leggin", weight: 0.2, sex: "female"))
        clothes.itemList.append(Item(name: "Jeans", weight: 0.3, sex: "unisex"))
        clothes.itemList.append(Item(name: "Jacket", weight: 0.5, sex: "unisex"))
        
        
        
        let shoes = PackingList()
        
        shoes.itemList.append(Item(name: "Shoes", weight: 0.5, sex: "unisex"))
        shoes.itemList.append(Item(name: "Boots", weight: 0.6, sex: "female"))
        shoes.itemList.append(Item(name: "High heels", weight: 0.4, sex: "female"))
        shoes.itemList.append(Item(name: "Flip-flops", weight: 0.2, sex: "unisex"))
        shoes.itemList.append(Item(name: "Sandal", weight: 0.3, sex: "female"))
        
        let technology = PackingList()
        
        technology.itemList.append(Item(name: "Camera", weight: 0.5, sex: "unisex"))
        technology.itemList.append(Item(name: "Camera Charger", weight: 0.1, sex: "unisex"))
        technology.itemList.append(Item(name: "Phone", weight: 0.1, sex: "unisex"))
        technology.itemList.append(Item(name: "Phone charger", weight: 0.1, sex: "unisex"))
        technology.itemList.append(Item(name: "Watch", weight: 0.1, sex: "unisex"))
        technology.itemList.append(Item(name: "Headphones", weight: 0.1, sex: "unisex"))
        technology.itemList.append(Item(name: "Tablet", weight: 0.1, sex: "unisex"))
        technology.itemList.append(Item(name: "Tablet charger", weight: 0.1, sex: "unisex"))
        
        let accessories = PackingList()
        
        accessories.itemList.append(Item(name: "Lipbalm", weight: 0.1, sex: "unisex"))
        accessories.itemList.append(Item(name: "Foreign currency", weight: 0.2, sex: "unisex"))
        accessories.itemList.append(Item(name: "Insurance Card", weight: 0.1, sex: "unisex"))
        accessories.itemList.append(Item(name: "Passport", weight: 0.1, sex: "unisex"))
        accessories.itemList.append(Item(name: "Pen", weight: 0.1, sex: "unisex"))
        accessories.itemList.append(Item(name: "Power adapter", weight: 0.1, sex: "unisex"))
        accessories.itemList.append(Item(name: "Visa", weight: 0.1, sex: "unisex"))
        accessories.itemList.append(Item(name: "Vaccination certificates", weight: 0.1, sex: "unisex"))
        accessories.itemList.append(Item(name: "Boarding pass", weight: 0.1, sex: "unisex"))
        accessories.itemList.append(Item(name: "Medication", weight: 0.1, sex: "unisex"))
        
        
        let gym = PackingList()
        
        gym.itemList.append(Item(name: "Gym shoes", weight: 1.0, sex: "unisex"))
        gym.itemList.append(Item(name: "Gym shorts", weight: 0.3, sex: "unisex"))
        gym.itemList.append(Item(name: "Gym t-shirt", weight: 0.3, sex: "unisex"))
        gym.itemList.append(Item(name: "Gym towel", weight: 0.4, sex: "unisex"))
        
        
        let water = PackingList()
        
        water.itemList.append(Item(name: "Swimming gogles", weight: 0.2, sex: "unisex"))
        water.itemList.append(Item(name: "After sun lotion", weight: 0.3, sex: "unisex"))
        water.itemList.append(Item(name: "Beach bag", weight: 0.3, sex: "unisex"))
        water.itemList.append(Item(name: "Beach towel", weight: 0.4, sex: "unisex"))
        water.itemList.append(Item(name: "Sandals", weight: 0.3, sex: "unisex"))
        water.itemList.append(Item(name: "Sunscreen", weight: 0.3, sex: "unisex"))
        water.itemList.append(Item(name: "Swimsuit", weight: 0.3, sex: "unisex"))
        
        
        let snow = PackingList()
        
        snow.itemList.append(Item(name: "Helmet", weight: 0.4, sex: "unisex"))
        snow.itemList.append(Item(name: "Lomg Underwear", weight: 0.3, sex: "unisex"))
        snow.itemList.append(Item(name: "Long-sleeved shirt", weight: 0.4, sex: "unisex"))
        snow.itemList.append(Item(name: "Scarf", weight: 0.2, sex: "unisex"))
        snow.itemList.append(Item(name: "Snow goggles", weight: 0.3, sex: "unisex"))
        snow.itemList.append(Item(name: "Snow gloves", weight: 0.3, sex: "unisex"))
        snow.itemList.append(Item(name: "Snow jacket", weight: 0.6, sex: "unisex"))
        snow.itemList.append(Item(name: "Snow pants", weight: 0.5, sex: "unisex"))
        snow.itemList.append(Item(name: "Winter boots", weight: 1.2, sex: "unisex"))
        
        
        let work = PackingList()
        
        work.itemList.append(Item(name: "Business cards", weight: 0.1, sex: "unisex"))
        work.itemList.append(Item(name: "Laptop", weight: 1.2, sex: "unisex"))
        work.itemList.append(Item(name: "Laptop charger", weight: 0.3, sex: "unisex"))
        work.itemList.append(Item(name: "Work badge", weight: 0.1, sex: "unisex"))
        
        let dinner = PackingList()
        
        dinner.itemList.append(Item(name: "Shirt", weight: 0.6, sex: "unisex"))
        dinner.itemList.append(Item(name: "Shoe polish", weight: 0.2, sex: "unisex"))
        dinner.itemList.append(Item(name: "Suit jacket", weight: 0.8, sex: "unisex"))
        dinner.itemList.append(Item(name: "Work belt", weight: 0.3, sex: "unisex"))
        dinner.itemList.append(Item(name: "Work pants", weight: 0.4, sex: "unisex"))
        dinner.itemList.append(Item(name: "Work shoes", weight: 0.9, sex: "unisex"))
        dinner.itemList.append(Item(name: "Tie", weight: 0.2, sex: "unisex"))
        
        let party = PackingList()
        
        party.itemList.append(Item(name: "Small mirror", weight: 0.1, sex: "female"))
        party.itemList.append(Item(name: "Make up kit", weight: 0.2, sex: "female"))
        party.itemList.append(Item(name: "Eye shadow", weight: 0.1, sex: "female"))
        party.itemList.append(Item(name: "Power foundation", weight: 0.2, sex: "female"))
        party.itemList.append(Item(name: "Application brushes", weight: 0.1, sex: "female"))
        party.itemList.append(Item(name: "Eyeliner", weight: 0.1, sex: "female"))
        
        let nature = PackingList()
        
        nature.itemList.append(Item(name: "Head lamp", weight: 0.2, sex: "unisex"))
        nature.itemList.append(Item(name: "Mini cord", weight: 0.3, sex: "unisex"))
        nature.itemList.append(Item(name: "Sandals", weight: 0.4, sex: "unisex"))
        nature.itemList.append(Item(name: "Rain poncho", weight: 0.2, sex: "unisex"))
        nature.itemList.append(Item(name: "Insect repellant", weight: 0.2, sex: "unisex"))
        nature.itemList.append(Item(name: "Anti-itch cream", weight: 0.2, sex: "unisex"))
        
        let hicking = PackingList()
        
        hicking.itemList.append(Item(name: "Trail shoes", weight: 0.5, sex: "unisex"))
        hicking.itemList.append(Item(name: "Compass", weight: 0.2, sex: "unisex"))
        hicking.itemList.append(Item(name: "Map", weight: 0.1, sex: "unisex"))
        hicking.itemList.append(Item(name: "Water bottle", weight: 1.0, sex: "unisex"))
        hicking.itemList.append(Item(name: "Hat", weight: 0.1, sex: "unisex"))
        hicking.itemList.append(Item(name: "Whistle", weight: 0.1, sex: "unisex"))
        hicking.itemList.append(Item(name: "Flashlight", weight: 0.3, sex: "unisex"))
        hicking.itemList.append(Item(name: "First aid kit", weight: 0.2, sex: "unisex"))
        hicking.itemList.append(Item(name: "Knife", weight: 0.2, sex: "unisex"))
        hicking.itemList.append(Item(name: "Backpack", weight: 0.4, sex: "unisex"))
        hicking.itemList.append(Item(name: "Zip lock bag", weight: 0.1, sex: "unisex"))
        
        
    
    }
    
    
}
