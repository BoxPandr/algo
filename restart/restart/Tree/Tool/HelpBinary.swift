//
//  HelpBinary.swift
//  restart
//
//  Created by Jz D on 2020/8/6.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


/**
* Definition for a binary tree node.
 */
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}



private
var nodes = [TreeNode]()



extension Optional where Wrapped == TreeNode{
    
    private
    func inOrder(){
        
        guard let n = self else {
            return
        }
        n.left.inOrder()
        nodes.append(n)
        n.right.inOrder()
        
        
    }
    
    
    
    func visitInOrder() -> String {
        nodes.removeAll()
        inOrder()
        let sep = " - "
        var desp = nodes.reduce("") { (line, node) -> String in
                  line + sep + String(node.val)
               }
        let start = desp.startIndex
        desp.removeSubrange(start...(desp.index(start, offsetBy: sep.count - 2)))
        return desp
    }
    
}

