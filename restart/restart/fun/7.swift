//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


//  40. 组合总和 II


class Solution__7{
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        
        guard candidates.count > 1, target > 0 else {
                if candidates.count == 1, target - candidates[0] == 0{
                    return [candidates]
                }
                else{
                    return []
                }
                
            }
        
        
        
            var met = false
            for piece in candidates{
                if piece <= target{
                    met = true
                }
            }
            guard met else {
                return []
            }
            // 前面是终止条件
            
            
            
            
            
            var possible = candidates.sorted()
        //    print(possible)
        //    print(target)
        //    print("\n")
            var results = [[Int]]()
            while possible.isEmpty == false {
                let last = possible.removeLast()
                
                
                    switch target ¥ last {
                    case .small:
                        ()
                    case .equal:
                        results.append([last])
                    case .big:
                        // 包含
                        var contain = combinationSum2(possible, target - last)
                   //     print("contain")
                  //      print(contain)
                        if contain.isEmpty == false{
                            
                            var j = 0
                            while j < contain.count {
                                contain[j].append(contentsOf: [last])
                                j += 1
                            }
                            results.append(contentsOf: contain)
                        }
                    }
                    
              
                

            }
            
            
           // results = Array(Set(results))
            
            
            return results
        
        
        
        
        
    }
}
