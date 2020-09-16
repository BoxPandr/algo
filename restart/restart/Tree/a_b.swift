//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


class Solution__a_b {
    
    
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let n = root else {
            return root
        }
        let lhs = n.left
        let rhs = n.right
        n.right = invertTree(lhs)
        n.left = invertTree(rhs)
        return n
        
        
        
    }
    
    
    func test(){
        let ss = Solution__a_b()

        let src = [4,2,7,1,3,6,9]

        let result = ss.invertTree(src.toTree)

        print(result)
    }
}
