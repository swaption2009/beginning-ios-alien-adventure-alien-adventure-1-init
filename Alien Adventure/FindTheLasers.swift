//
//  FindTheLasers.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func findTheLasers() -> (UDItem -> Bool) {
        
        func containsLaser(item: UDItem) -> Bool {
            var namesArray = item.name
            if namesArray.lowercaseString.containsString("laser") {
                return true
            } else {
                return false
            }
        }
        
        return containsLaser
    }
    
}
