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
    
    
    
    var result = Int.max
    var cursor = Int.max
    
    
    func minDiffInBST_less(_ root: TreeNode?) -> Int {
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




extension Solution{
    
    
    // 借助递归的结构，自由调整
    
    func minDiffInBST(_ root: TreeNode?) -> Int {
        guard let n = root else {
            return Int.max
        }
        doInOrder(node: n)
        return result
    }
    
    func doInOrder(node piece: TreeNode?){
        guard let n = piece else {
            return
        }
        doInOrder(node: n.left)
        
        result = min(result, abs(cursor - n.val))
        cursor = n.val
        doInOrder(node: n.right)
    }
}
