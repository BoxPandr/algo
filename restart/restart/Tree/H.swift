//
//  H.swift
//  restart
//
//  Created by Jz D on 2020/8/12.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation

// 938
class Solution {
    
    var results = [Int]()
    
    
    func dfs(node root: TreeNode?){
        guard let n = root else {
            return
        }
        dfs(node: n.left)
        results.append(n.val)
        dfs(node: n.right)
    }
    
    
    func rangeSumBST_less(_ root: TreeNode?, _ L: Int, _ R: Int) -> Int {
        dfs(node: root)
        var result = 0
        for i in results where i >= L && i <= R{
            result += i
        }
        return result
    }
    
    
    func rangeSumBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> Int {
        guard let n = root else {
            return 0
        }
        var lhs = 0, rhs = 0, val = 0
        if n.val >= L{
            lhs = rangeSumBST(n.left, L, R)
            
        }
        if n.val <= R{
            rhs = rangeSumBST(n.right, L, R)
        }
        
        if n.val <= R, n.val >= L{
            val = n.val
        }
        
        
        return lhs + rhs + val
    }
}
