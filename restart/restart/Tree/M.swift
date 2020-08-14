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
    
    
    
    
    func longestUnivaluePath(_ root: TreeNode?) -> Int {
        guard let n = root else {
            return 0
        }
        
        var queue = [TreeNode]()
        queue.append(n)
        while queue.isEmpty == false {
            let piece = queue.removeLast()
            if let lhs = piece.left{
                queue.append(lhs)
            }
            if let rhs = piece.right{
                queue.append(rhs)
            }
            
        }
        
        
        
        return result
    }
    
    
  
    
    
    
}
