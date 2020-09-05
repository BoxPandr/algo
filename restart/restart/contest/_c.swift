//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



class Solution__c {
    func findLengthOfShortestSubarray(_ arr: [Int]) -> Int {
        var c = arr.count
        guard c > 1 else {
            return 0
        }
        var i = 0
        var possible = (0, true)
        while i < c - 1 {
            if possible.1{
                
                if arr[i] > arr[i + 1]{
                    possible = (0, false)
                }
                
            }
            else{
                
            }
            
            
        }
        
        
        
        
        return 0
    }
}
