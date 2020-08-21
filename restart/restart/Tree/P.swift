//
//  P.swift
//  restart
//
//  Created by Jz D on 2020/8/21.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


class Solution {
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        guard let n = root else{
            return []
        }
        var queue = [TreeNode]()
        queue.append(n)
        var levelVals = [n.val]
        var result = [ Double(n.val) ]
        while queue.isEmpty == false {
            levelVals.removeAll()
            var level = [TreeNode]()
            for part in queue{
                if let lhs = part.left{
                    level.append(lhs)
                    levelVals.append(lhs.val)
                }
                if let rhs = part.left{
                    level.append(rhs)
                    levelVals.append(rhs.val)
                }
            }
            if levelVals.isEmpty == false{
                let sum = levelVals.reduce(0, +)
                let average = Double(sum)/Double(levelVals.count)
                result.append(average)
            }
            queue = level
        }
        return result
    }
}
