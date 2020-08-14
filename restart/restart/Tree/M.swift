//
//  MM.swift
//  restart
//
//  Created by Jz D on 2020/8/14.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation

//  687. Longest Univalue Path


class Solution {

    
    
    
    
    func longestUnivaluePath(_ root: TreeNode?) -> Int {
        guard let n = root else {
            return 0
        }
        var result = 0
        var queue = [TreeNode]()
        queue.append(n)
        while queue.isEmpty == false {
            let part = queue.removeFirst()
            var progress = 0
            if let lhs = part.left{
                queue.append(lhs)
                progress += dfs(node: lhs, cursor: part.val)
            }
            if let rhs = part.right{
                queue.append(rhs)
                progress += dfs(node: rhs, cursor: part.val)
            }
            result = max(result, progress)
        }
        return result
    }
    
    
    
    
    // 左边 + 右边， 两条路径
    
    // 转化为求深度，
    // 求的是，满足条件的深度
    func dfs(node n: TreeNode?, cursor val: Int) -> Int{
        guard let part = n, part.val == val else{
            return 0
        }
        return max(dfs(node: part.left, cursor: val), dfs(node: part.right, cursor: val)) + 1
    }
    
    
    
}
