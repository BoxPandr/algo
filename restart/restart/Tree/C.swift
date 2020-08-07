//
//  C.swift
//  restart
//
//  Created by Jz D on 2020/8/7.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


//  1022
class Solution {
    

    
    func sum(node n: TreeNode?, sum above: Int) -> Int{
        guard let dot = n else {
            return 0
        }
        if dot.left == nil, dot.right == nil {
            print(dot.val + above)
            return dot.val + above
        }
        else{
            let reduce = above * 2 + dot.val
            return sum(node: dot.left, sum: reduce) + sum(node: dot.right, sum: reduce)
        }
    }
    
    
    func sumRootToLeaf(_ root: TreeNode?) -> Int {
        guard let n = root else {
            return 0
        }
        return sum(node: n, sum: n.val)

    }
}
