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
    
    
    
    func test(){
        let solve = Solution_W()


        var src = [1, nil ,3,2,4, nil ,5,6]

        src = [1,nil,2,3,4,
               5,nil,nil,6,7,
               nil,8,nil,9,10,
               nil,nil,11,nil,12,
               nil,13,nil,nil,14]

        let node = src.treeN


        let result = solve.preorder(node)


        print(result)
    }
}
