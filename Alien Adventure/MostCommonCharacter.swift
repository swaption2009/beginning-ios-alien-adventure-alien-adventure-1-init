//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        
        var counter = [Character:Int]()
        var mostValue: Int = 0
        var mostCommonCharacter: Character = "a"
        
        if inventory.count > 0 {
            
            for i in inventory {
                let name = i.name.lowercaseString
                // print(name)
                for x in name.characters {
                    if let value = counter[x] {
                        let newCount = value + 1
                        counter[x] = newCount
                    } else {
                        counter[x] = 1
                    }
                // print(x)
                }
            }
            
        } else {
            return nil
        }
        
        for (letter, number) in counter {
            if number > mostValue {
                mostValue = number
                mostCommonCharacter = letter
            }
            // print(mostCommonCharacter)
        }
        
        return mostCommonCharacter
    }
        
}
