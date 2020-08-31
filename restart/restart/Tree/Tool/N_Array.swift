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
    
    var treeN: Node?{
        guard isEmpty == false, let first = self[0] else {
            return nil
        }
        
        let root = Node(first)
        var queue = [root]
        var i = 2
        var j = 0
        while i < count{
            var children = [Node]()
            while self[i] != nil{
                children.append(Node(self[i]!))
                i += 1
            }
            queue[j].children = children
            queue.append(contentsOf: children)
            j += 1
        }
        
        
        
        return root
    }
    
    
}

