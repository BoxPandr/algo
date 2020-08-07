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




extension TreeNode: CustomStringConvertible{
    
    public var description: String{
         return diagram(self)
        
    }
    
    
    
    private func diagram(_ node: TreeNode?, _ top: String = "" , _ root: String = "", _ bottom: String = "") -> String{
        guard let node = node else {
            // return root + "nil\n"
            return root + "空\n"
        }
        if node.left == nil && node.right == nil {
            return root + "\(node.val)\n"
        }
        
        
        return diagram(node.right, top + " ", top + "┌──", top + "│ ") + root + "\(node.val)\n" +  diagram(node.left, bottom + "│ ", bottom + "└──", bottom + " ")
        
    }// diagram will recursively create a string representing the binary tree.
    // To try it out, head back to the playground and write the following:
    
    
    // 右结点 配 "┌──"
    // 左结点 配 "└──"
    
    
    
}


