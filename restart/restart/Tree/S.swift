//
//  S.swift
//  restart
//
//  Created by Jz D on 2020/8/31.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


// 后序排序

class Solution_S {
    
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
    
    
    
    func test(){
        let s = Solution_S()

        var src: [Int?] = [1, nil ,3,2,4, nil,5,6]

        src = [1,nil,2,3,4,5,nil,nil,
               6,7,nil,8,nil,9,10,nil,
               nil,11,nil,12,nil,13,nil,nil,
               14]

        let node = src.treeN


        var result = s.postorder(node)


        print(result)
    }
}
