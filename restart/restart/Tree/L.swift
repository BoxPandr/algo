//
//  L.swift
//  restart
//
//  Created by Jz D on 2020/8/14.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


//  700.    Search in a Binary Search Tree


class Solution_L {
    
    
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let n = root else {
            return nil
        }
        var queue = [TreeNode]()
        queue.append(n)
        while queue.isEmpty == false {
            let piece = queue.removeFirst()
            if piece.val == val{
                return piece
            }
            if let part = piece.left{
                queue.append(part)
            }
            if let part = piece.right{
                queue.append(part)
            }
        }
        return nil
    }
    
    func test(){
        
        
        
    }
}
