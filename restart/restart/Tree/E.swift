//
//  E.swift
//  restart
//
//  Created by Jz D on 2020/8/10.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation

//  563,        Binary Tree Tilt


class Solution_E {
    
    // 深度优先，就好了
    
    
    // 每个结点的，左子树之和 - 右子树之和， 的绝对值， 累积起来
    func findTilt(_ root: TreeNode?) -> Int {
        guard let n = root else{
            return 0
        }
        return sum(n).tilt
        
    }
    
    
    
    
    func sum(_ root: TreeNode?) -> (sum: Int, tilt: Int) {
        guard let n = root else{
            return (0, 0)
        }
        let lhs = sum(n.left)
        let rhs = sum(n.right)
        return (lhs.sum + rhs.sum + n.val, abs(lhs.sum - rhs.sum) + lhs.tilt + rhs.tilt)
    }
    
    
    
    
    func test(){
        let s = Solution_E()

        var src = [1, 2, 3]

        src = [1,2,3,4, 0,5]

        let node = src.toTree

        let r = s.findTilt(node)

        print(r)
    }
}
