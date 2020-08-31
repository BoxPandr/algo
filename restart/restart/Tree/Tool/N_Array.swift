//
//  N_Array.swift
//  restart
//
//  Created by Jz D on 2020/8/31.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



//  Definition for a Node


public class Node {
    
    public var val: Int
    public var children: [Node]
    
    
    public init(_ val: Int) {
        self.val = val
        self.children = []
    }
}


extension Array where Element == Int?{
    // 多叉树
    var treeN: Node?{
        guard isEmpty == false, let first = self[0] else {
            return nil
        }
        
        let root = Node(first)
        
        //  对应 ， j
        var queue = [root]
        // 处理父结点
        
        
        var q = [root.val]
        
        // 跳过 root, 和
        // root 之后的第一个 nil
        var i = 2
        
        
        var j = 0
        while i < count{
            var children = [Node]()
            while i < count, self[i] != nil{
                children.append(Node(self[i]!))
                i += 1
            }
            i += 1
            queue[j].children = children
            queue.append(contentsOf: children)
            q.append(contentsOf: children.map({ $0.val }))
            j += 1
        }
        
        
        
        return root
    }
    
    
}

