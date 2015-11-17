//
//  InscriptionEternalStar.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func inscriptionEternalStar(inventory: [UDItem]) -> UDItem? {
        var inscriptionItems: UDItem?
        
        for i in inventory {
            if i.inscription == "THE GLOW OF THE ETERNAL STAR" {
                // print(i.inscription)
                if let inscriptionItem = i.inscription {
                    let x = inscriptionItem
                    return i
                    // print(x)
                } else {
                    print("no inscription")
                }
            } else {
                print("nothing's here")
            }
        }
        
        return nil
    }
}
