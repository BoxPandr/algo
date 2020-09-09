//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


//  39. 组合总和



class Solution__5{
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        guard candidates.count > 0, target > 0 else {
            if target == 0{
                return []
            }
            else{
                return []
            }
        }
        var possible = candidates.sorted()
        var results = [[Int]]()
        while possible.isEmpty == false {
            let last = possible.removeLast()
            
            var i = 1
            while i * last < target {
                let contain = combinationSum(possible, target - i * last)
                if contain.isEmpty == false{
                    results.append(contentsOf: contain)
                    var j = 0
                    while j < results.count {
                        results[j].append(i * last)
                        j += 1
                    }
                }
                
                
                i += 1
            }
            let apart = combinationSum(possible, target)
            results.append(contentsOf: apart)
            
        }
        
        
        
        
        
        return results
    }
}
