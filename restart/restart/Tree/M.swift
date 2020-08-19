//
//  MM.swift
//  restart
//
//  Created by Jz D on 2020/8/14.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation

//  687. Longest Univalue Path


class Solution_m {
    
    
    var gotIt = 0

    func longestUnivaluePath_not_good(_ root: TreeNode?) -> Int {
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




extension Solution_m{
    
    
    
    func longestUnivaluePath(_ root: TreeNode?) -> Int {
     
        guard let n = root else {
            return 0
        }
        dfs(tree: n, value: n.val)
        return gotIt
        
    }
    
    
    
    // dfs, 全部访问一遍
    
    // 添加筛选条件
    
    
    @discardableResult
    func dfs(tree root: TreeNode, value val: Int) -> Int{
        var lhs = 0, rhs = 0
        if let left = root.left{
            // 父结点的值，与子结点的值，比较
            lhs = dfs(tree: left, value: root.val)
        }
        if let right = root.right{
            rhs = dfs(tree: right, value: root.val)
        }
        // 这一步，是统计
        gotIt = max(gotIt, lhs + rhs)
        
        
        // 下一步，返回，是标记
        if root.val == val{
            
            //  路径寻找，取舍，采用判断
            
            return max(lhs, rhs) + 1
        }
        else{
            return 0
        }
    }
    
    
    
}
