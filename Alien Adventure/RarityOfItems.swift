//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        
        var countCommon = 0
        var countUncommon = 0
        var countRare = 0
        var countLegendary = 0
        
        var rareItemsCount: [UDItemRarity:Int] = [:]
        
        for i in inventory {
            var rareItem = i.rarity
            
            switch rareItem {
            case .Common:
                countCommon += 1
            case .Uncommon:
                countUncommon += 1
            case .Rare:
                countRare += 1
            case .Legendary:
                countLegendary += 1
            }
        }
        
        rareItemsCount[.Common] = countCommon
        rareItemsCount[.Uncommon] = countUncommon
        rareItemsCount[.Rare] = countRare
        rareItemsCount[.Legendary] = countLegendary
        
//        print(rareItemsCount)
        
        return rareItemsCount
    }
}
