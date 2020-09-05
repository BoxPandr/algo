//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



class Solution__b {
    func numWays(_ s: String) -> Int {
        let count = s.count
        guard count > 2 else {
            return 0
        }
        var sum = 0
        for piece in s{
            if let val = Int(String(piece)){
                sum += val
            }
        }
        guard sum % 3 == 0 else {
            return 0
        }
        var result = 0
        var i = 0, j = count - 1
        let part = sum / 3
        let begin = s.startIndex
        
        while i < j {
            var left = 0, right = 0
           
            while i < j, left < part{
                if let val = Int(String(s[s.index(begin, offsetBy: i)])){
                    left += val
                    i += 1
                  
                }
            }
        

            
            while i < j {
               
             
                while i < j, right < part{
                    
                    if let val = Int(String(s[s.index(begin, offsetBy: j)])){
                        right += val
                        
                        j -= 1
                        
                       
                    }
                }
                print(i , j)
                result += 1
                j -= 1
            }
            j = count - 1
            i += 1
        }
        
        
        
        return result
    }
}
