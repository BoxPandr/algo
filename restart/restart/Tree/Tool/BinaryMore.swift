//
//  BinaryMore.swift
//  restart
//
//  Created by Jz D on 2020/8/7.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation






extension Array where Element == Int?{
    
    var toTree: TreeNode?{
        guard isEmpty == false, let first = self[0] else {
            return nil
        }
        
        var nodes = [TreeNode(first)]
        var i = 0
        while 2 * i + 1 < count {
            if let val = self[2 * i + 1]{
                let n = TreeNode(val)
                nodes[i].left = n
                nodes.append(n)
            }
            else{
                nodes[i].left = nil
            }
            if 2 * i + 2 < count{
                if let val = self[2 * i + 2]{
                    let n = TreeNode(val)
                    nodes[i].right = n
                    nodes.append(n)
                }
                else{
                    nodes[i].right = nil
                }
            }
            i += 1
            
        }
        return nodes[0]
    }
    
    
}

