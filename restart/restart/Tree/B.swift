//
//  B.swift
//  restart
//
//  Created by Jz D on 2020/8/7.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation

//  100
class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        
        let lhs = (p == nil)
        let rhs = (q == nil)
        guard lhs == rhs else {
            return false
        }
        if let left = p, let right = q{
            if left.val == right.val{
                return isSameTree(left.left, right.left) && isSameTree(left.right, right.right)
            }
            else{
                return false
            }
        }
        else{
            return true
        }
        
        
    }
}
