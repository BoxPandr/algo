//
//  K.swift
//  restart
//
//  Created by Jz D on 2020/8/13.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


//  783

class Solution {
    
    var vals = [Int]()
    
    func minDiffInBST(_ root: TreeNode?) -> Int {
        guard let n = root else {
            return 0
        }
        inOrder(node: n)
        guard vals.count > 1 else {
            return 0
        }
        var result = vals[1] - vals[0]
        var i = 2
        while i < vals.count {
            result = min(result, vals[i] - vals[i - 1])
            i += 1
        }
        return result
    }
    
    
    func inOrder(node piece: TreeNode?){
        guard let n = piece else {
            return
        }
        inOrder(node: n.left)
        vals.append(n.val)
        inOrder(node: n.right)
        
    }
}
