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

    
    var progress = 0
    
    
    func longestUnivaluePath(_ root: TreeNode?) -> Int {
        guard let n = root else {
            return 0
        }
        var result = 0
        var queue = [TreeNode]()
        queue.append(n)
        while queue.isEmpty == false {
            let part = queue.removeFirst()
            progress = 0
            if let lhs = part.left{
                queue.append(lhs)
                visit(node: lhs, cursor: part.val)
            }
            if let rhs = part.right{
                queue.append(rhs)
                visit(node: rhs, cursor: part.val)
            }
            result = max(result, progress)
        }
        return result
    }
    
    
    
    
    // 左边 + 右边， 两条路径
    
    // 转化为求深度，
    // 求的是，满足条件的深度
    func visit(node n: TreeNode, cursor val: Int){
        guard n.val == val else{
            return
        }
        progress += 1
        if let lhs = n.left{
            visit(node: lhs, cursor: val)
        }
        if let rhs = n.right{
            visit(node: rhs, cursor: val)
        }
    }
    
    
    
}
