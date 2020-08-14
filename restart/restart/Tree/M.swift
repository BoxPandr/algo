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
    
    var result = 0
    
    
    var cursor: (val: Int, progress: Int) = (0, 0)
    // = [Int: Int]()
    
    
    func longestUnivaluePath(_ root: TreeNode?) -> Int {
        guard let n = root else {
            return 0
        }
        
        cursor.val = n.val
        dfs(node: n)
        
        
        return result
    }
    
    
    func dfs(node root: TreeNode){
        
        
        
        if cursor.val == root.val{
            cursor.progress += 1
        }
        else{
            cursor.val = root.val
            result = max(result, cursor.progress)
            cursor.progress = 0
        }
        
        if let lhs = root.left{
            dfs(node: lhs)
        }
        
        if let rhs = root.right{
            dfs(node: rhs)
        }
        
        
        
    }
    
    
    
}
