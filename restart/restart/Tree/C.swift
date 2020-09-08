//
//  C.swift
//  restart
//
//  Created by Jz D on 2020/8/7.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


//  1022
class Solution_C {
    

    
    func sum(node n: TreeNode?, sum above: Int?) -> Int{
        guard let dot = n else {
            return 0
        }
        let val = above ?? 0
        if dot.left == nil, dot.right == nil {
            //  print(dot.val + val)
            return dot.val + val
        }
        else{
            let reduce = (val + dot.val) * 2
            return sum(node: dot.left, sum: reduce) + sum(node: dot.right, sum: reduce)
        }
    }
    
    
    func sumRootToLeaf(_ root: TreeNode?) -> Int {
        guard let n = root else {
            return 0
        }
        return sum(node: n, sum: nil)

    }
    
}



extension Solution_C{
    
    
    func sumRootTo(leaf root: TreeNode?) -> Int {
        guard let n = root else {
            return 0
        }
        return dfs(leaf: n, value: 0)

    }
    
    func dfs(leaf root: TreeNode?, value val: Int) -> Int{
        guard let n = root else {
            return 0
        }
        let reduce = val * 2 + n.val
        if n.left == nil, n.right == nil{
            return reduce
        }
        else{
            return dfs(leaf: n.left, value: reduce) + dfs(leaf: n.right, value: reduce)
        }
        
    }
    
    
    func test(){
        let sol = Solution_C()
        var src = [1,0,1,0,1,0,1]
        src = [1,0,1]
        let node = src.toTree

        var result = sol.sumRootToLeaf(node)


        result = sol.sumRootTo(leaf: node)
        print(result)
    }
}
