//
//  R.swift
//  restart
//
//  Created by Jz D on 2020/8/24.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


// 606. Construct String from Binary Tree



class Solution {
    
    var result = ""
    
    func tree2str(_ t: TreeNode?) -> String {
 
        guard let node = t else {
            return ""
        }
        
        inOrder(visit: node)
        
        
        return result
    }
    
    
    func inOrder(visit node: TreeNode?){
        guard let n = node else {
            return
        }
        result = result + "\(n.val)"
        
        inOrder(visit: n.left)
        
        inOrder(visit: n.right)
        
    }
    
    
}
