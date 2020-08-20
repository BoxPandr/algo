//
//  O.swift
//  restart
//
//  Created by Jz D on 2020/8/20.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



class Solution {
    
    
    var queue = [Int]()
    
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
        guard let n = root else{
            return false
        }
        dfs(node: n)
        guard queue.count > 1 else{
            return false
        }
        var i = 0
        while i < queue.count{
            var j = queue.count - 1
            while i < j {
                if queue[i] + queue[j] == k{
                    return true
                }
                else{
                    i += 1
                    j -= 1
                }
            }
        }
        return false
    }
    
    
    
    func dfs(node part: TreeNode?){
        guard let n = part else{
            return
        }
        dfs(node: n.left)
        queue.append(n.val)
        dfs(node: n.right)
    }
}


