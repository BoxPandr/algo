//
//  U.swift
//  restart
//
//  Created by Jz D on 2020/8/31.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


//  404. Sum of Left Leaves


class Solution {
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        
        guard let n = root else {
            return 0
        }
        
        var queue = [n]
        var sum = 0
        while queue.isEmpty == false{
            let node = queue.removeFirst()
            if let lhs = node.left{
                queue.append(lhs)
                if lhs.left == nil, lhs.right == nil{
                    sum += lhs.val
                }
            }
            if let rhs = node.right{
                queue.append(rhs)
            }
        }
        return sum
    }
}
