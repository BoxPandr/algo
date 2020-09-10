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
        var backup = candidates.sorted()
        var i = backup.count - 1
        while i >= 0 {
            if backup[i] > target{
                backup.removeLast()
            }
            else{
                break
            }
            i -= 1
        }
//        print("backup")
//        print(backup)
//        print("target")
//        print(target)
//        print("\n")
        
        guard backup.count > 1, target > 0 else {
            if backup.count == 1, target == backup[0]{
                return [backup]
            }
            else{
                return []
            }
            
        }
        
        
        
            var met = false
            for piece in backup{
                if piece <= target{
                    met = true
                }
            }
            guard met else {
                return []
            }
            // 前面是终止条件
            
            
            
            
            
            
     
            
            var results = [[Int]]()
            while backup.isEmpty == false {
                let last = backup.removeLast()
                
                
                    switch target ¥ last {
                    case .small:
                        ()
                    case .equal:
                        results.append([last])
                    case .big:
                        // 包含
                        var contain = combinationSum2(backup, target - last)
//                        print("\n")
//                        print("backup")
//                        print(backup)
//                        print("target - last")
//                        print(target - last)
//                        print("contain")
//                        print(contain)
//                        print("\n")
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
            
            
            results = Array(Set(results))
            
            
            return results
        
        
        
        
        
    }
}







extension Solution__7{
    func test(){
        let solve = Solution__7()

        var src = [10,1,2,7,6,1,5]

        // src = [2,5,2,1,2]

        //  src = [1, 2, 2]


        var target = 8

        // target = 5

        //  target = 3

        let result = solve.combinationSum2(src, target)

        print(result)

    }
    
    
    
}
