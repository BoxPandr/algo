//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


class Solution_W{
    
//  589. N-ary Tree Preorder Traversal
    
    func preorder(_ root: Node?) -> [Int] {
        guard let n = root else {
            return []
        }
        
        var result = [n.val]
        for node in n.children{
            result.append(contentsOf: preorder(node))
        }
        
        return result
    }
}
