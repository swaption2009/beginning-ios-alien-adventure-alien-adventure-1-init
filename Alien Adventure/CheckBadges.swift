//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        
        var earnedBadges = [UDRequestType]()
        
        for x in requestTypes {
            for i in badges {
                if String(i.requestType) == String(x.rawValue) {
                    earnedBadges.append(i.requestType)
                }
            }
        }
        
        if earnedBadges.count < requestTypes.count {
            return false
        }
        
        for x in requestTypes {
            if !earnedBadges.contains(x) {
                return false
            }
        }
        
        return true
    }
}
