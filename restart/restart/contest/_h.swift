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
    // 建表， 查表
    
    
    var map = [[Int]]()
    
    // 不是依次连接
    func minCostConnectPoints(_ points: [[Int]]) -> Int {
        
        
        let rowCount = points.count
        guard rowCount > 1 else {
            return 0
        }
        var i = 0
        while i < rowCount {
            var j = 0
            
            while j < rowCount {
                if i == j{
                    map[i].append(-1)
                }
                else{
                    let val = abs(points[i][0] - points[j][0]) + abs(points[i][1] - points[j][1])
                    map[i].append(val)
                }
                
                j += 1
            }
            
            
            i += 1
        }
        
        var result = 0
        
        
        
        
        
        return result
        
    }
    
    
    
    
    
    // 不是依次连接
    func minCostConnectPoints_time_out(_ points: [[Int]]) -> Int {
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
