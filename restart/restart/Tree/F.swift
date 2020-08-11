//
//  F.swift
//  restart
//
//  Created by Jz D on 2020/8/11.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation

//  993.
class Solution {
    
    struct Result {
        let val: Int
        var depth = -1
        var parent = -1
        
        init(value v: Int) {
            val = v
        }
    }
    
    
    var leftR: Result?
    var rightR: Result?

    
    // 在一棵树的迷宫中，查找
    
    // 递归， 递而不归
    
    // 这么多路径中，只取一条，就需要状态了，
    //
    // 用属性，记录状态
    
    
    
    // dfs, 结点的独立深度
    
    
    // 不需要返回
    
    
    // 传递，带参数，
    // 带参数，是向下的路径
    
    
    // 归来，用返回
    // 返回，是路径的汇总
    func dfs(tree node: TreeNode?, father pVal: Int, pH pHeight: Int){
        guard let n = node else {
            return
            // fake
        }
        if let left = leftR, left.val == n.val{
            leftR?.parent = pVal
            leftR?.depth = pHeight + 1
        }
        else if let right = rightR, right.val == n.val{
            rightR?.parent = pVal
            rightR?.depth = pHeight + 1
        }
            
        dfs(tree: n.left, father: n.val, pH: pHeight + 1)
        
        dfs(tree: n.right, father: n.val, pH: pHeight + 1)

    }
    
    
    func isCousins(_ root: TreeNode?, _ x: Int, _ y: Int) -> Bool {
        leftR = Result(value: x)
        rightR = Result(value: y)
        dfs(tree: root, father: -1, pH: 0)
        return (leftR?.depth == rightR?.depth) && (leftR?.parent != rightR?.parent)
    }
}
