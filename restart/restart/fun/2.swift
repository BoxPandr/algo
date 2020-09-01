//
//  2.swift
//  restart
//
//  Created by Jz D on 2020/9/1.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


//  486. 预测赢家



class Solution {
    
    // 简单的 greedy 是不行的
    func PredictTheWinner(_ nums: [Int]) -> Bool {
        
        
        guard nums.count >= 2 else {
            return true
        }
        
        var temp = nums
        var pOne = 0
        var pTwo = 0
        var actionOne = true
        while 0 < (temp.count - 1){
            if temp[0] > temp[temp.count - 1]{
                if actionOne{
                    pOne += temp[0]
                }
                else{
                    pTwo += temp[0]
                }
                temp.removeFirst()
            }
            else{
                if actionOne{
                    pOne += temp[temp.count - 1]
                }
                else{
                    pTwo += temp[temp.count - 1]
                }
                temp.removeLast()
            }
            actionOne.toggle()
        }
        
        
        
        
        return pOne >= pTwo
    }
}
