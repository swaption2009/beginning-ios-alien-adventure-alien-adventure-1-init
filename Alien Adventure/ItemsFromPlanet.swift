//
//  ItemsFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func itemsFromPlanet(inventory: [UDItem], planet: String) -> [UDItem] {
        
        var itemFromGlinda = [UDItem]()
        
        for i in inventory {
            var originPlanet = i.historicalData["PlanetOfOrigin"]!
            if originPlanet as! String == planet {
                itemFromGlinda.append(i)
            }
        }

        return itemFromGlinda
    }
    
}
