//
//  S.swift
//  restart
//
//  Created by Jz D on 2020/8/31.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


// 后序排序

class Solution {
    
    var result = [Int]()
    
    
    func postorder(_ root: Node?) -> [Int] {
        postorder(visitor: root)
        return result
    }
    
    
    func postorder(visitor node: Node?){
        guard let n = node else {
            return
        }
        for ele in n.children{
            postorder(visitor: ele)
        }
        
        result.append(n.val)
        
    }
}
