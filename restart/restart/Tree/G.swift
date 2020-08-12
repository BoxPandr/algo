//
//  G.swift
//  restart
//
//  Created by Jz D on 2020/8/12.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



//  965. Univalued Binary Tree

class Solution {
    func isUnivalTree(_ root: TreeNode?) -> Bool {
        guard let n = root else{
            return true
        }
        let val = n.val
        var queue = [TreeNode]()
        queue.append(n)
        while queue.isEmpty == false {
            var newQueue = [TreeNode]()
            for piece in queue{
                
                if let lhs = piece.left{
                    if lhs.val != val{
                        return false
                    }
                    
                    newQueue.append(lhs)
                }
                
                if let rhs = piece.right{
                    if rhs.val != val{
                        return false
                    }
                    newQueue.append(rhs)
                }
            }
            queue = newQueue
        }
        return true
    }
}
