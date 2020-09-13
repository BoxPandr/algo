//
//  _h.swift
//  restart
//
//  Created by Jz D on 2020/9/13.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


class Solution___h {
    
    
    // 不是依次连接
    func minCostConnectPoints(_ points: [[Int]]) -> Int {
        var count = points.count
        guard count > 1 else {
            return 0
        }
        var pointList = points
        
        var result = 0
        
        // i 具有任意性
        var i = 0
        while pointList.count > 1{
           
            let pt = pointList.remove(at: i)
            
            var j = 0, length = 0, first = true
            count = pointList.count
            
            
            while j < count {
                let len = abs(pt[0] - pointList[j][0]) + abs(pt[1] - pointList[j][1])
                if first{
                    first = false
                    length = len
                    i = j
                }
                else if length > len{
                    length = len
                    i = j
                }
                j += 1
            }
            print(pt)
            print(pointList[i])
            result += length
        }
        
        return result
        
    }
}
