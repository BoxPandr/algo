//
//  D.swift
//  restart
//
//  Created by Jz D on 2020/8/10.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


//  669
class Solution_D {
    
    
    // in order, 改一下 中序遍历
    
    func trimBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> TreeNode? {
        
        guard let n = root else {
            return nil
        }
        switch n.val {
        case ..<L:
            // 左边结点，都没用了
            return trimBST(root?.right, L, R)
        case L...R:
            n.left = trimBST(root?.left, L, R)
            n.right = trimBST(root?.right, L, R)
            return n
        case R...:
            // 右边结点，都没用了
            return trimBST(root?.left, L, R)
        default:
            return nil
        }
    }
    
    func test(){
        let s = Solution_D()
        
        var src = [1, 0, 2]
        var lhs = 1
        var rhs = 2
        src = [3, 0, 4, 0, 2, 0, 0, 0,  0,  1]
        rhs = 3
        let node = src.toTree

        let r = s.trimBST(node, lhs, rhs)


        print(r)
    }
}
