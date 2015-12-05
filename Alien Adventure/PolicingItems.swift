//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func policingItems(inventory: [UDItem], policingFilter: UDItem throws -> Void) -> [UDPolicingError:Int] {
        
        var x: Int = 0
        var y: Int = 0
        var z: Int = 0
        
        for i in inventory {
            do {
                try policingFilter(i)
            } catch UDPolicingError.ItemFromCunia {
                x += 1
            } catch UDPolicingError.NameContainsLaser {
                y += 1
            } catch UDPolicingError.ValueLessThan10 {
                z += 1
            } catch {
                // print("no error")
            }
        }
        
        return [UDPolicingError.ItemFromCunia: x, UDPolicingError.NameContainsLaser: y, UDPolicingError.ValueLessThan10: z]
    }    
}