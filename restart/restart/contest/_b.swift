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
        
        var arr = [Int](repeating: 0, count: count + 1)
        var i = 0
        let src = Array(s)
        while i < count {
            var val = 0
            if src[i] == "1"{
                val = 1
            }
            arr[i + 1] = arr[i] + val
            i += 1
        }
        guard arr[count] != 0 else {
            return (count - 1) * (count - 2) / 2
        }
        guard arr[count] % 3 == 0 else {
            return 0
        }
        
        i = 0
        var lhs = 0
        var rhs = 0
        let equal = arr[count] / 3
        while i < count{
            if arr[i] == equal{
                lhs += 1
            }
            if arr[i] == equal * 2{
                rhs += 1
            }
            i += 1
        }
        
        return lhs * rhs % 1000_000_007
    }
}
