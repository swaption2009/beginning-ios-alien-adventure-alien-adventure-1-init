//
//  LeastValuableItem.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func leastValuableItem(inventory: [UDItem]) -> UDItem? {
        
        var leastValueItem: UDItem?
        
        var leastValue: Int = 100000
        
        for i in inventory {
            if i.baseValue < leastValue {
                leastValue = i.baseValue
                leastValueItem = i
                print(leastValue)
                print(leastValueItem)
            } else {
                print("baseValue is biggest than leastValue")
            }
        }
        
        return leastValueItem
    }
}
