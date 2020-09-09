//
//  V.swift
//  restart
//
//  Created by Jz D on 2020/8/31.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


//  572. Subtree of Another Tree


class Solution_V {
    func isSubtree(_ s: TreeNode?, _ t: TreeNode?) -> Bool {
        let first: Int
        var queue: [TreeNode]
        let child: TreeNode
        if let parent = s, let kid = t {
            child = kid
            first = child.val
            queue = [parent]
        }else {
            return true
        }
        
        
        var sources = [TreeNode]()
        while queue.isEmpty == false {
            let node = queue.removeFirst()
            if node.val == first{
                sources.append(node)
            }
            if let lhs = node.left{
                queue.append(lhs)
            }
            if let rhs = node.right{
                queue.append(rhs)
            }
        }
        print(sources)
        for ele in sources{
            if check(parent: ele, kid: child){
                return true
            }
        }
        return false
    }
    
    
    func check(parent p: TreeNode, kid child: TreeNode) -> Bool{
        var queue = [p]
        var childQueue = [child]
        while queue.isEmpty == false {
            let node = queue.removeFirst()
            let child = childQueue.removeFirst()
            if node.val == child.val{}else{
                return false
            }
            if let lhs = node.left, let childLhs = child.left{
                queue.append(lhs)
                childQueue.append(childLhs)
            }
            else if node.left == nil, child.left == nil{ }
            else{
                return false
            }
            
            if let rhs = node.right, let childRhs = child.right{
                queue.append(rhs)
                childQueue.append(childRhs)
            }
            else if node.right == nil, child.right == nil{ }
            else{
                return false
            }
        }
        if queue.isEmpty, childQueue.isEmpty{
            return true
        }
        else{
            return false
        }
    }
    
}
    
    
    


extension Solution_V{
    
    
    func isSubtree_wrong(_ s: TreeNode?, _ t: TreeNode?) -> Bool {
        
        guard let parent = s, let child = t else {
            return true
        }
        let first = child.val
        var queue = [parent]
        
        var met = false
        while queue.isEmpty == false {
            let node = queue.removeFirst()
            if node.val == first{
                queue.removeAll()
                queue.append(node)
                met = true
                break
            }
            else{
                if let lhs = node.left{
                    queue.append(lhs)
                }
                if let rhs = node.right{
                    queue.append(rhs)
                }
            }
        }
        guard met else {
            return false
        }
        var childQueue = [child]
        while queue.isEmpty == false {
            let node = queue.removeFirst()
            let child = childQueue.removeFirst()
            guard node.val == child.val else{
                return false
            }
            if let lhs = node.left, let childLhs = child.left{
                queue.append(lhs)
                childQueue.append(childLhs)
            }
            else if node.left == nil, child.left == nil{ }
            else{
                return false
            }
            
            if let rhs = node.right, let childRhs = child.right{
                queue.append(rhs)
                childQueue.append(childRhs)
            }
            else if node.right == nil, child.right == nil{ }
            else{
                return false
            }
        }
        if queue.isEmpty, childQueue.isEmpty{
            return true
        }
        else{
            return false
        }
    }
}




extension Solution_V{
    func test(){
        let solve = Solution_V()

        var base: [Int?] = [3,4,5,1,2]

        // base = [3,4,5,1,2, nil, nil, nil, nil , 0]
        // base = [1, 1]
        var child = [4, 1, 2]
        // child = [1]
        guard let p = base.toTree, let c = child.toTree else{
            fatalError()
        }
        // print(p)

        // print(c)
        let result = solve.isSubtree(p, c)

        print(result)
    }
}
