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
    struct Distance {
        let from: Int
        let to: Int
        let len: Int
    }
    
    
    
    
    
    
    var par: [Int]!
    
    
    // 不是依次连接
    func minCostConnectPoints(_ points: [[Int]]) -> Int {
        // 建表格，从二维到一维
        var map = [Distance]()
        let rowCount = points.count
        guard rowCount > 1 else {
            return 0
        }
        var i = 0
        while i < rowCount {
            var j = i + 1
            
            while j < rowCount {
                if i != j{
                    let val = abs(points[i][0] - points[j][0]) + abs(points[i][1] - points[j][1])
                    map.append(Distance(from: i, to: j, len: val))
                }
                
                j += 1
            }
            
            
            i += 1
        }
        par = Array(0...rowCount)
        var result = 0
        i = 0
        let lookup = map.sorted { (lhs, rhs) -> Bool in
            lhs.len < rhs.len
        }
        let count = lookup.count
        while i < count {
            let u = lookup[i].from, v = lookup[i].to, x = find(val: u), y = find(val: v)
            
            if x != y{
                par[x] = y
                result += lookup[i].len
            }
            
            
            i += 1
        }
        
        
        return result
        
    }
    
    // find 方法是精华
    func find(val x: Int) -> Int{
        if x == par[x]{
            return x
        }
        else{
            par[x] = find(val: par[x])
            return par[x]
        }
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
