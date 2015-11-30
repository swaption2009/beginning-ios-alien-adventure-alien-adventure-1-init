//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {

        let itemJSONURL = NSBundle.mainBundle().URLForResource("PlanetData", withExtension: "json")!
        let rawItemJSON = NSData(contentsOfURL: itemJSONURL)!
        
        var itemDictionaryFromJSON: NSArray!
        do {
            itemDictionaryFromJSON = try! NSJSONSerialization.JSONObjectWithData(rawItemJSON, options: NSJSONReadingOptions()) as! NSArray
        }
        
        var highestScore: Int = 0
        var winningPlanet: String = ""
        
        // print(itemDictionaryFromJSON)
        
        for i in itemDictionaryFromJSON {
            var score: Int = 0
            if let commonItem = i.objectForKey("CommonItemsDetected") as? Int {
                // print(commonItem)
                score = commonItem * 1
                if let uncommonItem = i.objectForKey("UncommonItemsDetected") as? Int {
                    score += uncommonItem * 2
                    if let rareItem = i.objectForKey("RareItemsDetected") as? Int {
                        score += rareItem * 3
                        if let legendaryItem = i.objectForKey("LegendaryItemsDetected") as? Int {
                            score += legendaryItem * 4
                            // print(score)
                            // print(highestScore)
                            if let planet = i.objectForKey("Name") as? String {
                                if score > highestScore {
                                    highestScore = score
                                    winningPlanet = planet
                                    // print(winningPlanet)
                                } else {
                                    // print("score is not higher")
                                }
                            }
                        }
                    }
                }
            }
        }
        
        return winningPlanet
    }
}
