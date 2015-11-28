//
//  XORCipherKeySearch.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func xorCipherKeySearch(encryptedString: [UInt8]) -> UInt8 {
        var key: UInt8 = 0
        
        for x in UInt8.min..<UInt8.max {
            
//            print(x)
            
            var decrypted = [UInt8]()
            
            for character in encryptedString {
                
//              print(character)
                
                // ADD CODE: perform decryption
                var result1 = character ^ x
//               print(result1)
                decrypted.append(result1)
            }
            
//            print(decrypted)
            
            if let decryptedString = String(bytes: decrypted,
                encoding: NSUTF8StringEncoding) where decryptedString == "udacity" {
                    // ADD CODE: found match, now what?
//                  print("found")
                    key = x
            }
        }
        
        return key
    }
}
