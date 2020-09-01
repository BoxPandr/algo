//
//  2.swift
//  restart
//
//  Created by Jz D on 2020/9/1.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


//  486. 预测赢家

// 只能两端选，二叉树
// 二叉决策树

class Solution {
    
    // 简单的 greedy 是不行的
    
    // 建立模型，使用递归
    
    
    
    
    // 这是一棵树
    
    
    
    // 赢面，还是挺大的，
    // 除非确定拿不到，必胜的牌
    
    
    
    
    
    // 三个元素吗，出结果
    // 超过 3 个，动态规划
    func PredictTheWinner(_ nums: [Int]) -> Bool {
        
        let result = predict(theWinner: nums, which: true)
        print(result)
        return result.scoreLhs >= result.scoreRhs
    }
    
    
    
    func predict(theWinner nums: [Int], which turn: Bool) -> ( scoreLhs: Int, scoreRhs: Int){
        let length = nums.count
        guard length > 3 else {
            var i = 0, j = 0, oneTurn = turn
            var lhs = 0
            var rhs = 0

            while i < length - j{
                if nums[i] >= nums[length - 1 - j]{
                    if oneTurn{
                        lhs += nums[i]
                    }
                    else{
                        rhs += nums[i]
                    }
                    i += 1
                }
                else{
                    if oneTurn{
                        lhs += nums[length - 1 - j]
                    }
                    else{
                        rhs += nums[length - 1 - j]
                    }
                    j += 1
                }
                oneTurn.toggle()
            }
            print(lhs, rhs)
            return (lhs, rhs)
        }
        let left = Array(nums[1...])
        let lhs = predict(theWinner: left, which: !turn)
        let right = Array(nums[..<(length-1)])
        let rhs = predict(theWinner: right, which: !turn)
        print("lhs.scoreLhs + nums[0]")
        print(lhs.scoreLhs + nums[0])

        print("rhs.scoreRhs + nums[length-1]")
        print(rhs.scoreRhs + nums[length-1])
        if lhs.scoreLhs + nums[0] >= rhs.scoreRhs + nums[length-1]{
            return (lhs.scoreLhs + nums[0], lhs.scoreRhs)
        }
        else{
            return (rhs.scoreRhs + nums[length-1], rhs.scoreRhs)
        }
        
    }
    
    
    // 从外围开始算，好多情况，算到崩溃
    
    
    // 从最简单的情况出发，递归，很容易理顺
    
    
    // 从根至于叶子，理所当然
    
    
    // 从叶子至于叶子，有点小麻烦
}


// 递归，就是一棵树
