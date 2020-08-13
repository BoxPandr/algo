//
//  I.swift
//  restart
//
//  Created by Jz D on 2020/8/12.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation

//  897


class Solution_I {
    
    // 递归，还能这么用
    
    // DFS 过程中，重塑结点的结构， 需要辅助变量
    
    
    var cursor: TreeNode?
    
    var vals = [Int]()
    
    func inOrder(node root: TreeNode?){
        guard let n = root else{
            return
        }
        inOrder(node: n.left)
        vals.append(n.val)
        inOrder(node: n.right)
    }
    
    
    func increasingBST_slow(_ root: TreeNode?) -> TreeNode? {
        guard let n = root else {
            return nil
        }
        inOrder(node: n)
        print(vals)
        let result = TreeNode(vals[0])
        var i = 1
        var temp = result
        while i < vals.count {
            let newOne = TreeNode(vals[i])
            temp.right = newOne
            i += 1
            temp = newOne
        }
        return result
    }
}





extension Solution_I{
    
    func increasingBST(_ root: TreeNode?) -> TreeNode? {
        guard let n = root else {
            return nil
        }
        
        // 记住最初的位置
        let dummy = TreeNode(-1)
        cursor = dummy
        dfs(tree: n)
        return dummy.right
        
    }
    
    
    func dfs(tree node: TreeNode?){
        // 终止条件
        guard let n = node else {
            return
        }
        dfs(tree: n.left)
        // 操作
        n.left = nil
        cursor?.right = n
        
        // 传递下去
        cursor = n
        dfs(tree: n.right)
    }
    
    
    
    
    func test(){
        let s = Solution_I()

        var src = [5,3,6,2,4,nil ,8,1, nil, nil, nil,7,9]
        // src = [1, 2, 4, 5, 3]
        let node = src.toTree

        let r = s.increasingBST(node)

        print(r)
    }
    
}
