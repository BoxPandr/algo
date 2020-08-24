//
//  Q.swift
//  restart
//
//  Created by Jz D on 2020/8/21.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


//  617

class Solution {
    func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        guard let left = t1 else{
            return t2
        }
        guard let right = t2 else {
            return t1
        }
        left.val = left.val + right.val
        var queue = [(left, right)]
        
        while queue.isEmpty == false {
            let n = queue.removeFirst()
            if let lhs = n.0.left{
                if let otherL = n.1.left{
                    queue.append((lhs, otherL))
                    n.0.left?.val = lhs.val + otherL.val
                }
            }
            else{
                n.0.left = n.1.left
            }
            if let rhs = n.0.right{
                if let otherR = n.1.right{
                    queue.append((rhs, otherR))
                    n.0.right?.val = rhs.val + otherR.val
                }
            }
            else{
                n.0.right = n.1.right
            }
        }
        return left
    }
}


