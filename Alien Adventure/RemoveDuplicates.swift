//
//  RemoveDuplicates.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func removeDuplicates(inventory: [UDItem]) -> [UDItem] {

        let cleanListSet = Set<UDItem>(inventory)
        let cleanList = cleanListSet.sort({ $0 < $1 })
        
        return cleanList
    }
    
}
