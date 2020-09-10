//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



//  559. Maximum Depth of N-ary Tree

class Solution_X {
    func maxDepth(_ root: Node?) -> Int {
        
        guard let n = root else {
            return 0
        }
        
        var result = 1
        for node in n.children{
            
            result = max(result, maxDepth(node) + 1)
            
            
        }
        
        
        return result
    }
    
    
    
    func test(){

        let solve = Solution_X()


        var src = [1, nil ,3,2,4, nil ,5,6]
         
         
        src = [1,nil,2,3,4,
               5,nil,nil,6,7,
               nil,8,nil,9,10,
               nil,nil,11,nil,12,
               nil,13,nil,nil,14]



        let node = src.treeN


        let result = solve.maxDepth(node)


        print(result)
    }
}
