//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


// 递归的精华

// 就是削

// 让要处理的情况变少



class Solution_6 {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        guard n > 1, k > 1 else {
            if k == 1, n > 0{
                return (1...n).map { (i) -> [Int] in
                    [i]
                }
            }
            else{
                return []
            }
        }
        var result = combine(n - 1, k - 1)
        var i = 0
        let c = result.count
        while i < c {
            result[i].append(n)
            i += 1
        }
        result += combine(n - 1, k)
        
        return result
    }
}
