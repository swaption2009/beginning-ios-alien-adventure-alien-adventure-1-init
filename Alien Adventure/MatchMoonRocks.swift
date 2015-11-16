//
//  MatchMoonRocks.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func matchMoonRocks(inventory: [UDItem]) -> [UDItem] {
        var newInventory = [UDItem]()
        
        for i in inventory {
            if i.name == "MoonRock" {
                newInventory.append(i)
            }
        }
        
        return newInventory
    }
}