//
//  T.swift
//  restart
//
//  Created by Jz D on 2020/8/31.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation

//  101. Symmetric Tree

class Solution_T {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        guard let n = root else{
            return true
        }
        var queue = [n]
        var ok = true
        while queue.isEmpty == false {
            var result = [Int]()
            var level = [TreeNode]()
            for ele in queue{
                if let lhs = ele.left{
                    level.append(lhs)
                    result.append(lhs.val)
                }
                else{
                    result.append(-1)
                }
                if let rhs = ele.right{
                    level.append(rhs)
                    result.append(rhs.val)
                }
                else{
                    result.append(-1)
                }
            }
            var i = 0
            var j = result.count - i - 1
            while i < j {
                if result[i] != result[j]{
                    ok = false
                    return ok
                }
                i += 1
                j = result.count - i - 1
            }
            if ok == false{
                return ok
            }
            queue = level
            
        }
        
        return ok
    }
}
