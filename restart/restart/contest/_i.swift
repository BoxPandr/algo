//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


class Solution_i__{
    
    
    func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
        var result = 0
        let count = arr.count
        guard count > 0 else {
            return result
        }
        
        var base = 1
        while base <= count {
            
            var i = 0
            while i + base - 1 < count {
                
                var j = i
                while j <= i + base - 1 {
                    result += arr[j]
                    j += 1
                }
                
                i += 1
            }
            
            base += 2
        }
        
        return result
    }
}
