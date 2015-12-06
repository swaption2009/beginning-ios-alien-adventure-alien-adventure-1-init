//
//  SortLeastToGreatest.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func sortLeastToGreatest(inventory: [UDItem]) -> [UDItem] {

        let sortedInventory = inventory.sort ({ (lhs: UDItem, rhs: UDItem) -> Bool in
            if lhs.rarity.rawValue != rhs.rarity.rawValue {
                return (lhs.rarity.rawValue) < (rhs.rarity.rawValue)
            } else {
                return lhs.baseValue < rhs.baseValue
            }
        })
        
        return sortedInventory
    }

}
