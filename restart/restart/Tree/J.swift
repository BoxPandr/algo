
//
//  J.swift
//  restart
//
//  Created by Jz D on 2020/8/13.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation

//  872


class Solution {
    
    var tempSequence = [Int]()
    
    
    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        leafSequence(of: root1)
        let lhs = tempSequence
        tempSequence.removeAll()
        leafSequence(of: root2)
        let rhs = tempSequence
        return lhs == rhs
    }
    
    
    
    
    func leafSequence(of node: TreeNode?){
        guard let n = node else {
            return
        }
        
        leafSequence(of: n.left)
        // 中序遍历，做一个筛选
        // 只添加叶子结点的值
        if n.left == nil, n.right == nil{
            tempSequence.append(n.val)
        }
        
        leafSequence(of: n.right)
    }
}
