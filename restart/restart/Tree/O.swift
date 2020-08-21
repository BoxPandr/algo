//
//  O.swift
//  restart
//
//  Created by Jz D on 2020/8/20.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



class Solution_O {
    
    
    var queue = [Int]()
    
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
        guard let n = root else{
            return false
        }
        dfs(node: n)
        guard queue.count > 1 else{
            return false
        }
        var i = 0
        while i < queue.count{
            var j = queue.count - 1
            while i < j {
                let reduce = queue[i] + queue[j]
                switch reduce {
                case k:
                    return true
                case ..<k:
                    i += 1
                case (k + 1)...:
                    j -= 1
                default:
                    ()
                }
            }
            i += 1
        }
        return false
    }
    
    
    
    func dfs(node part: TreeNode?){
        guard let n = part else{
            return
        }
        dfs(node: n.left)
        queue.append(n.val)
        dfs(node: n.right)
    }
    
    
    
    func test(){
        let s = Solution_O()

        var src = [5,3,6,2,4,nil,7]

        let node = src.toTree

        print(node)

        let r = s.findTarget(node, 28)

        print(r)
    }
}


