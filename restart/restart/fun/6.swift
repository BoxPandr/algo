//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


class Solution_6 {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        guard n > 0, k > 0 else {
            return []
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
