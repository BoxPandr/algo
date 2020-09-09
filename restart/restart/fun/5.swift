//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


//  39. 组合总和

enum CompareState{
    case big, small, equal
}


infix operator ¥


func ¥(lhs: Int, rhs: Int) -> CompareState {
    if lhs == rhs{
        return .equal
    }
    else if lhs > rhs{
        return .big
    }
    else{
        return .small
    }
}




class Solution__5{
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        guard candidates.count > 1, target > 0 else {
            if candidates.count == 1, target % candidates[0] == 0{
                return [[Int](repeating: candidates[0], count: target / candidates[0])]
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
            
            var i = 1
            
            // 这里有一个分支操作
            inner: while i * last <= target {
                let current = i * last
                switch target ¥ current {
                case .small:
                    break inner
                case .equal:
                    results.append([Int](repeating: last, count: i))
                case .big:
                    // 包含
                    var contain = combinationSum(possible, target - current)
               //     print("contain")
              //      print(contain)
                    if contain.isEmpty == false{
                        
                        var j = 0
                        while j < contain.count {
                            contain[j].append(contentsOf: [Int](repeating: last, count: i))
                            j += 1
                        }
                        results.append(contentsOf: contain)
                    }
                }
                
                i += 1
            }
            
            // 不包含
            let apart = combinationSum(possible, target)
            if apart.isEmpty == false{
                print("possible")
                print(possible)
                print("apart")
                print(apart)
                print("target")
                print(target)
                print("\n")
                results.append(contentsOf: apart)
            }
            
            
        }
        
        
       // results = Array(Set(results))
        
        
        return results
    }
}
