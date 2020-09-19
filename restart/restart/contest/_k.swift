//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


class Solution_K____ {
    
    
    
    
    // 被 3 整除
    func minSubarray_three(_ nums: [Int], _ p: Int) -> Int {
        let sum = nums.reduce(0, +)
        let gotIt = sum % 3
        guard gotIt != 0 else {
            return 0
        }
        
        let array = nums.map {
            $0 % 3
        }
        
        if gotIt == 1{
            
            if array.contains(1){
                return 1
            }
            else{
                var i = 0
                var ok = false
                for ele in array{
                    if ele == 2{
                        if i == 1{
                            ok = true
                            break
                        }
                        i += 1
                    }
                }
                if ok , array.count > 2{
                    return 2
                }
                else{
                    return -1
                }
                
            }
            
            
        }
        else{
            // gotIt = 2
            
            if array.contains(2){
                return 1
            }
            var i = 0
            var ok = false
            for ele in array{
                if ele == 1{
                    if i == 1{
                        ok = true
                        break
                    }
                    i += 1
                }
            }
            if ok , array.count > 2{
                return 2
            }
            else{
                return -1
            }
        }
    }
}
