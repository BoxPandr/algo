//
//  A.swift
//  restart
//
//  Created by Jz D on 2020/8/7.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



class Solution_A {
    
  
    func depth(node root:TreeNode?) -> Int?{
        guard let n = root else {
            return 0
        }
        guard let lhs = depth(node: n.left), let rhs = depth(node: n.right), abs(rhs - lhs) <= 1 else{
            return nil
        }
        return max(lhs, rhs) + 1
    }
    
    
    
    func isBalanced(_ root: TreeNode?) -> Bool {
        guard let n = root else {
            return true
        }
        return depth(node: n) != nil
    }
    
    
    
}


