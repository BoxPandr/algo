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
                progress += visit(node: lhs, cursor: part.val, progress: 0)
            }
            if let rhs = part.right{
                queue.append(rhs)
                progress += visit(node: rhs, cursor: part.val, progress: 0)
            }
            result = max(result, progress)
        }
        return result
    }
    
    
    
    
    // 左边 + 右边， 两条路径
    
    @discardableResult
    func visit(node n: TreeNode, cursor val: Int, progress reduce: Int) -> Int{
        guard n.val == val else{
            return 0
        }
        let accumulate = reduce + 1
        if let lhs = n.left{
            visit(node: lhs, cursor: val, progress: accumulate)
        }
        if let rhs = n.right{
            visit(node: rhs, cursor: val, progress: accumulate)
        }
        return accumulate
    }
    
    
    
}
