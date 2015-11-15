//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func reverseLongestName(inventory: [UDItem]) -> String {
        
        // populate new arrays to store names and its length from inventory
        var longestName: String = ""
        var longestLength: Int = 0

        for i in inventory {
            if i.name.characters.count > longestLength {
                longestName = i.name
                longestLength = i.name.characters.count
            }
        }
        
//      print(longestName)
        let reverseLongestName = String(longestName.characters.reverse())
//        print(reverseLongestName)
        
        return reverseLongestName
    }
    
}