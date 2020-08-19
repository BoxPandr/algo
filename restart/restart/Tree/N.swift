//
//  N.swift
//  restart
//
//  Created by Jz D on 2020/8/19.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


class Solution {
    
    
    
    
    
    
    
    
    func findSecondMinimumValue(_ root: TreeNode?) -> Int {
            
        
        guard let n = root else{
            return -1
        }
        
        let least = n.val
        var queue = [TreeNode]()
        queue.append(n)
        var list = [Int]()
        list.append(n.val)
        while queue.isEmpty == false {
            let node = queue.removeFirst()
            if let lhs = node.left{
                queue.append(lhs)
                list.append(lhs.val)
            }
            if let rhs = node.right{
                queue.append(rhs)
                list.append(rhs.val)
            }
        }
        let result = list.filter { $0 != least }
        if result.isEmpty{
            return -1
        }
        else{
            return result.min() ?? -1
        }
    }
}
