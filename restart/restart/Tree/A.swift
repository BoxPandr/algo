//
//  A.swift
//  restart
//
//  Created by Jz D on 2020/8/7.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


//  110
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
    
    
    func test(){

        var src = [1,2,2,3,3,3,3,4,4,4,4,4,4, nil, nil,5,5]
        src = [3,9,20, nil ,nil ,15,7]
        //  src = [1,2,2,3,3,nil,nil,4,4]

        let node = src.toTree


        let sol = Solution_A()
        let result = sol.isBalanced(node)

        print(result)

        let desp = node.visitInOrder()
        print(desp)



    }
}




