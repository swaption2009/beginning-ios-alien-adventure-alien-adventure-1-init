//
//  TotalBaseValue.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func totalBaseValue(inventory: [UDItem]) -> Int {
        let baseValue = inventory.map { return $0.baseValue }
        let totalBaseValue = baseValue.reduce(0) { return $0 + $1 }
        
        return totalBaseValue
    }
    
}
