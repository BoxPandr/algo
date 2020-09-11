//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation

//  543. Diameter of Binary Tree


// 求直径

//  左子结点的深度， 左半径

//  右子结点的深度， 右半径

//  结点个数 = 左半径 + 1 + 右半径


//  直径 = 左半径 + 1 + 右半径 - 1




// 递归真棒，函数能进去，还能出来



class Solution_Y {
    
    var record = 0
    
    
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        guard let n = root else {
            return record
        }
        
        dfs(node: n)
        
        return record
    }
    
    
    
    
    
    @discardableResult
    private func dfs(node n: TreeNode) -> Int{
        
        var left = 0, right = 0
        if let lhs = n.left{
            left = dfs(node: lhs)
        }
        if let rhs = n.right{
            right = dfs(node: rhs)
        }
        record = max(record, left + right)
        return max(left, right) + 1
    }
}

