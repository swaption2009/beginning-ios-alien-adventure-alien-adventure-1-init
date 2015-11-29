//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        
        var bannedItemID = [Int]()
        
        let dataFileURL = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "plist")!
        let itemArray = NSArray(contentsOfURL: dataFileURL)!
        
        for item in itemArray {
            if let itemID = item.objectForKey("ItemID") as? Int {
                 // print(itemID)
                if let name = item.objectForKey("Name") as? String {
                     // print(name)
                    if name.lowercaseString.containsString("laser") {
                        if let age = item.objectForKey("HistoricalData")?.objectForKey("CarbonAge") as? Int {
                            if age > 0 {
                                // print(age)
                                bannedItemID.append(itemID)
                                // print(bannedItemID)
                            }
                        }
                    }
                }
            }
        }
        
        return bannedItemID
    }
}

