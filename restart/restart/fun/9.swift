//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


//      1583,     统计不开心的朋友  



class Solution__9 {
    func unhappyFriends(_ n: Int, _ preferences: [[Int]], _ pairs: [[Int]]) -> Int {
        let count = pairs.count
        guard count > 0 else {
            return 0
        }
        var priorityMap = [Int : Set<Int>]()
        Array(0...(n - 1)).forEach {
            priorityMap[$0] = Set<Int>()
        }
        
        for p in pairs{
            
            for f in preferences[p[0]]{
                if f == p[1]{
                    break
                }
                else{
                    priorityMap[p[0]]?.insert(f)
                }
            }
            
            
            for f in preferences[p[1]]{
                if f == p[0]{
                    break
                }
                else{
                    priorityMap[p[1]]?.insert(f)
                }
            }
            
        }
        //  print(priorityMap)
        var result = 0
        
        for cp in priorityMap{
            
            let x = cp.key
            for v in cp.value{
                if let uGroup = priorityMap[v], uGroup.contains(x){
                    result += 1
                    break
                }
            }
        }
        return result
    }
}
