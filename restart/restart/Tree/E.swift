//
//  E.swift
//  restart
//
//  Created by Jz D on 2020/8/10.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


class Solution {
    
    // 深度优先，就好了
    
    
    // 每个结点的，左子树之和 - 右子树之和， 的绝对值， 累积起来
    func findTilt(_ root: TreeNode?) -> Int {
        guard let n = root else{
            return 0
        }
        var left = 0, right = 0
        if let lhs = n.left{
            left = lhs.val
        }
        if let rhs = n.right{
            right = rhs.val
        }
        return findTilt(n.left) + findTilt(n.right) + abs(left - right)
        
    }
}
