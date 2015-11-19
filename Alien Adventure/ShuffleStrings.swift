//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {

        // set bool conditions
        var lengthRequirement = false
        var isPass = false
        var s1Switch = true
        var s2Switch = true
        
        var indexArrayS1 = Array<String.CharacterView.Index>()
        var indexArrayS2 = Array<String.CharacterView.Index>()
        
        // first check: sum of character count
        if shuffle.characters.count == s1.characters.count + s2.characters.count {
            lengthRequirement = true
        }
        
        // index s1 characters in shuffle
        for character in s1.characters {
            for index in shuffle.characters.indices {
                if character == shuffle[index] {
                    indexArrayS1.append(index)
                }
            }
        }
        
        // index s2 characters in shuffle
        for character in s2.characters {
            for index in shuffle.characters.indices {
                if character == shuffle[index] {
                    indexArrayS2.append(index)
                }
            }
        }
        
//        print(indexArrayS1)
//        print(indexArrayS2)
        
        var test1 = shuffle.characters.startIndex
        var test2 = shuffle.characters.startIndex
        
        for value in indexArrayS1 {
            if test1 > value {
                s1Switch = false
            }
            test1 = value
        }
        
        for value in indexArrayS2 {
            if test2 > value {
                s2Switch = false
            }
            test2 = value
        }
        
        // check if isPass follows all requirements
        if s1Switch && s2Switch && lengthRequirement {
            isPass = true
        }
        return isPass
    }
}