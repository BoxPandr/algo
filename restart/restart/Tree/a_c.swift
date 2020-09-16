//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


class Solution__a_c {
    
    
    // 递归，就是弄一个简单的情况出来，处理掉
    
    // 就是不含递归的，一个简单的例子，根结点，和，处理左子结点和右子结点
    
    
    
    // 然后再处理含递归的，加入函数
    
    var val = 0
    
    func convertBST(_ root: TreeNode?) -> TreeNode? {
        
        guard let n = root else {
            return nil
        }
        
        convert(bst: n)
        
        return n
    }
    
    
    func convert(bst root: TreeNode?){
        
        guard let n = root else {
            return
        }
        
        // 右边比左边大，
        
        // 从右边，开始记录
        convert(bst: n.right)
        val += n.val
        n.val = val
        
        convert(bst: n.left)
        
        
    }
    
}
