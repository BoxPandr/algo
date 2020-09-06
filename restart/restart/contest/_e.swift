//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation

// 动态规划

// 建表

// 查表

class Solution__e {
 
    // 动态规划的实质，查表不就完了
    
    // 空间换时间
    
    // 空间，里面，已经计算好了的
    
    // + 排序
    func numTriplets(_ nums1: [Int], _ nums2: [Int]) -> Int {
    
        let left = nums1.sorted()
        let lhsCount = left.count
        let right = nums2.sorted()
        let rhsCount = right.count
        
        var mapLeft = [Int]()
        var mapRight = [Int]()
        var i = 0, j = 0
        
        while i < lhsCount {
            while j < lhsCount {
                if i != j{
                    mapLeft.append(left[i] * left[j])
                }
                j += 1
            }
            i += 1
        }
        mapLeft = mapLeft.sorted()
        
        i = 0
        j = 0
        while i < rhsCount {
            while j < rhsCount {
                if i != j{
                    mapRight.append(right[i] * right[j])
                }
                j += 1
            }
            i += 1
        }
        mapRight = mapRight.sorted()
        
        var result = 0
        var least = 0
        let mapLhsCount = mapLeft.count
        
        for piece in left{
            let std = piece * piece
            var bang = false
            j = least
            while j < mapLhsCount {
                
                
                if std >= mapLeft[j]{
                    if bang == false{
                        bang = true
                        least = j
                    }
                }
                else{
                    j+=1
                    continue
                }
                if std == mapLeft[j]{
                    
                    result += 1
                    
                }
                j += 1
            }
            
            
            
            
        }
        least = 0
        let mapRhsCount = mapRight.count
        
        for piece in right{
            let std = piece * piece
            var bang = false
            j = least
            while j < mapRhsCount {
                
                
                if std >= mapRight[j]{
                    if bang == false{
                        bang = true
                        least = j
                    }
                }
                else{
                    j+=1
                    continue
                }
                if std == mapRight[j]{
                    
                    result += 1
                    
                }
                j+=1
            }
            
            
            
            
        }
        
        
        return result
    }
}
