//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



//  637. 二叉树的层平均值


class Solution_Z {
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        guard let n = root else {
            return []
        }
        var actionQueue = [n]
        var result = [Double(n.val)]
        while actionQueue.isEmpty == false {
            var levelQueue = [TreeNode]()
            var levelVals = [Double]()
            for node in actionQueue {
                if let lhs = node.left{
                    levelQueue.append(lhs)
                    levelVals.append(Double(lhs.val))
                }
                if let rhs = node.right{
                    levelQueue.append(rhs)
                    levelVals.append(Double(rhs.val))
                }
                
            }
            actionQueue = levelQueue
            if levelVals.isEmpty == false{
                let average = levelVals.reduce(0, +)/Double(levelVals.count)
                result.append(average)
            }
            
        }
        return result
    }
}
