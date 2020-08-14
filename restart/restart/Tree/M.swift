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
    
    
    func longestUnivaluePath(_ root: TreeNode?) -> Int {
        guard let n = root else {
            return 0
        }
        var result = 0
        var queue = [TreeNode]()
        queue.append(n)
        while queue.isEmpty == false {
            let part = queue.removeFirst()
            result = max(result, visit(node: part))
            if let lhs = part.left{
                queue.append(lhs)
            }
            if let rhs = part.right{
                queue.append(rhs)
            }
        }
        return result
    }
    
    
    func visit(node n: TreeNode) -> Int{
        var queue = [TreeNode]()
        
        let cursor = n.val
        var progress = 0
        
        if let lhs = n.left, cursor == lhs.val{
            progress += 1
            queue.append(lhs)
            while queue.isEmpty == false {
                var newQueue = [TreeNode]()
                var left = false
                for piece in queue{
                    if let lhs = piece.left, cursor == lhs.val{
                        left = true
                        newQueue.append(lhs)
                    }
                    if let rhs = piece.right, cursor == rhs.val{
                        left = true
                        newQueue.append(rhs)
                    }
                }
                if left{
                    progress += 1
                }
                queue = newQueue
            }
        }
        queue.removeAll()
        if let lhs = n.left, cursor == lhs.val{
            progress += 1
            queue.append(lhs)
            while queue.isEmpty == false {
                var newQueue = [TreeNode]()
                var right = false
                for piece in queue{
                    if let lhs = piece.left, cursor == lhs.val{
                        right = true
                        newQueue.append(lhs)
                    }
                    if let rhs = piece.right, cursor == rhs.val{
                        right = true
                        newQueue.append(rhs)
                    }
                }
                if right{
                    progress += 1
                }
                queue = newQueue
            }
        }
        while queue.isEmpty == false {
            var newQueue = [TreeNode]()
            var left = false
            
            for piece in queue{
                if let lhs = piece.left, cursor == lhs.val{
                    left = true
                    newQueue.append(lhs)
                }
                if let rhs = piece.right, cursor == rhs.val{
                    right = true
                    newQueue.append(rhs)
                }
            }
            if left{
                progress += 1
            }
            if right{
                progress += 1
            }
            queue = newQueue
        }
        return progress
    }
    
    
    
}
