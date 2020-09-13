//
//  _h.swift
//  restart
//
//  Created by Jz D on 2020/9/13.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



//  5513. 连接所有点的最小费用



class Solution___h {
    
    
    // 不是依次连接
    func minCostConnectPoints(_ points: [[Int]]) -> Int {
        let count = points.count
        guard count > 1 else {
            return 0
        }
        var pointList = points
        
        var result = 0
        
        let pt = pointList.removeFirst()
        var dotted = [pt]
        
        
        
        
        while dotted.count < count{
           
            
            
            var i = 0, length = 0, first = true
            let dyCount = pointList.count
            
            for pt in dotted{
                var j = 0
                while j < dyCount {
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
                
            }
           // print(dotted)
          //  print(pointList[i])
            
            dotted.append(pointList[i])
            pointList.remove(at: i)
            result += length
        }
        
        return result
        
    }
}
