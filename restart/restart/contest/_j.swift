//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



class Solution__j__ {
    func maxSumRangeQuery(_ nums: [Int], _ requests: [[Int]]) -> Int {
        // 把所谓的排列， 转化为次数的统计
        let count = nums.count
        
        var result = 0
        
        guard count > 0 else {
            return result
        }
        
        var assistMap = [Int : Int]()
        Array(0...(count - 1)).forEach {
            assistMap[$0] = 0
        }
        
        for rep in requests{
            let range = (rep[0])...(rep[1])
            for i in range{
                assistMap[i]! += 1
            }
        }
        
        let numbers = nums.sorted(by: >)
        let sequence = assistMap.values.sorted(by: >)
        
        var i = 0
        let sequenceCount = sequence.count
        while i < sequenceCount {
            result += numbers[i] * sequence[i]
            i += 1
        }
        
        
        return result
    }
}
