//
//  I.swift
//  restart
//
//  Created by Jz D on 2020/8/12.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation

//  897


class Solution {
    
    var vals = [Int]()
    
    func inOrder(node root: TreeNode?){
        guard let n = root else{
            return
        }
        inOrder(node: n.left)
        vals.append(n.val)
        inOrder(node: n.right)
    }
    
    
    func increasingBST(_ root: TreeNode?) -> TreeNode? {
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
