//
//  ItemComparison.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

func <(lhs: UDItem, rhs: UDItem) -> Bool {

    let leftRarity = lhs.rarity.rawValue
    let rightRarity = rhs.rarity.rawValue
    
    if leftRarity < rightRarity {
        return true
    } else if leftRarity == rightRarity {
        
        let leftBaseValue = lhs.baseValue
        let rightBaseValue = rhs.baseValue
        
        if leftBaseValue < rightBaseValue {
            return true
        } else {
            return false
        }
        
    } else {
        return false
    }
    
}