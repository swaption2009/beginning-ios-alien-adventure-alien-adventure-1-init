//
//  GetCommonItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func getCommonItems(inventory: [UDItem]) -> [UDItem] {
                
        let items = inventory.filter() { (let item: UDItem) -> Bool in
            let rareItem = item.rarity
            var isCommon: Bool = false
            
            switch rareItem {
                case .Common:
                    isCommon = true
                    break
                case .Uncommon:
                    isCommon = false
                case .Rare:
                    isCommon = false
                case .Legendary:
                    isCommon = false
                }
            return isCommon
        }
        
        return items
    }
    
}
