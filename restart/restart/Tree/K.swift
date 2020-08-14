//
//  K.swift
//  restart
//
//  Created by Jz D on 2020/8/13.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


//  783

class Solution_K {
    
    var vals = [Int]()
    
    
    
    var result = Int.max
    var cursor = Int.max
    
    
    func minDiffInBST_less(_ root: TreeNode?) -> Int {
        guard let n = root else {
            return 0
        }
        inOrder(node: n)
        guard vals.count > 1 else {
            return 0
        }
        var result = vals[1] - vals[0]
        var i = 2
        while i < vals.count {
            result = min(result, vals[i] - vals[i - 1])
            i += 1
        }
        return result
    }
    
    
    func inOrder(node piece: TreeNode?){
        guard let n = piece else {
            return
        }
        inOrder(node: n.left)
        vals.append(n.val)
        inOrder(node: n.right)
        
    }
}




extension Solution_K{
    
    
    // 借助递归的结构，自由调整
    
    
    // 我原来以为，
    // 更好的处理，是根据不同的情况，怎么个好办法
    // 实际上，是弄一个模型，能够处理所有的情况
    // 不在于所谓的个例的技巧，不在于花哨
    // 计算机的实质
    
    
    
    func minDiffInBST(_ root: TreeNode?) -> Int {
        guard let n = root else {
            return Int.max
        }
        doInOrder(node: n)
        return result
    }
    
    func doInOrder(node piece: TreeNode?){
        guard let n = piece else {
            return
        }
        doInOrder(node: n.left)
        
        result = min(result, abs(cursor - n.val))
        cursor = n.val
        doInOrder(node: n.right)
    }
    
    
    
    
    func test(){
        let s = Solution_K()

        var src = [90,69,nil,49,89,nil,52]

        let node = src.toTree

        print(node)

        let r = s.minDiffInBST(node)

        print(r)
    }
}
