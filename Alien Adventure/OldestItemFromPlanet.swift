//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        
        var oldestItemFromCunia: UDItem?
        var oldestItem: Int = 0
        
        for i in inventory {
            if i.historicalData["PlanetOfOrigin"] as! String == planet {
                if i.historicalData["CarbonAge"] as! Int > oldestItem {
                    oldestItemFromCunia = i
                }
            }
        }
        
        return oldestItemFromCunia
    }
    
}
