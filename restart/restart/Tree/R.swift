//
//  R.swift
//  restart
//
//  Created by Jz D on 2020/8/24.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


// 606. Construct String from Binary Tree



class Solution_R{
    
    var result = ""
    
    func tree2str(_ t: TreeNode?) -> String {
 
        guard let node = t else {
            return ""
        }
        
        inOrder(visit: node, h: 0)
        
        return result
    }
    
    
    func inOrder(visit node: TreeNode?, h height: Int){
        guard let n = node else {
            return
        }
        var lhs = "\(n.val)"
        var rhs = ""
        if height > 0{
            lhs = "(\(n.val)"
            rhs = ")"
        }
        result = result + lhs
        if n.left == nil, n.right != nil{
            result = result + "()"
        }
        
        
        inOrder(visit: n.left, h: height + 1)
        
        inOrder(visit: n.right, h: height + 1)
        result = result + rhs
    }
    
    
    
    
}



extension Solution_R{

    func test(){
        let s = Solution_R()

        var src = [1,2,3,4]

        let node = src.toTree

        print(node)

        let r = s.tree2str(node)

        print(r)

    }



}
