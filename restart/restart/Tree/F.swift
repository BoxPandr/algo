//
//  F.swift
//  restart
//
//  Created by Jz D on 2020/8/11.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation

//  993.
class Solution_F {
    
    struct Result {
        let val: Int
        var depth = -1
        var parent = -1
        
        init(value v: Int) {
            val = v
        }
    }
    
    
    var leftR: Result?
    var rightR: Result?

    
    // 在一棵树的迷宫中，查找
    
    // 递归， 递而不归
    
    // 这么多路径中，只取一条，就需要状态了，
    //
    // 用属性，记录状态
    
    
    
    // dfs, 结点的独立深度
    
    
    // 不需要返回
    
    
    // 传递，带参数，
    // 带参数，是向下的路径
    // 带参数，是已经经历了的
    
    
    
    // 调用归来，用返回
    // 返回调用，是路径的汇总
    // 返回调用，是收集还没有计算到的
    func dfs(tree node: TreeNode?, father pVal: Int, pH pHeight: Int){
        guard let n = node else {
            return
            // fake
        }
        if let left = leftR, left.val == n.val{
            leftR?.parent = pVal
            leftR?.depth = pHeight + 1
        }
        else if let right = rightR, right.val == n.val{
            rightR?.parent = pVal
            rightR?.depth = pHeight + 1
        }
            
        dfs(tree: n.left, father: n.val, pH: pHeight + 1)
        
        dfs(tree: n.right, father: n.val, pH: pHeight + 1)

    }
    
    
    func isCousinsDFS(_ root: TreeNode?, _ x: Int, _ y: Int) -> Bool {
        leftR = Result(value: x)
        rightR = Result(value: y)
        dfs(tree: root, father: -1, pH: 0)
        return (leftR?.depth == rightR?.depth) && (leftR?.parent != rightR?.parent)
    }
}


// 当然，用迭代，层序遍历，也挺好





extension Solution_F {
    func isCousins(_ root: TreeNode?, _ x: Int, _ y: Int) -> Bool {
        guard let n = root else {
            return true
        }
        var queue = [TreeNode]()
        queue.append(n)
        while queue.isEmpty == false {
            var newQueue = [TreeNode]()
            // 同一层
            var leftX = false
            var leftRound = 0
            var rightX = false
            var rightRound = 0
            for dot in queue{
                if let lhs = dot.left{
                    newQueue.append(lhs)
                    if lhs.val == x{
                        leftX = true
                    }
                    if lhs.val == y{
                        rightX = true
                    }
                }
                
                if let rhs = dot.right{
                    newQueue.append(rhs)
                    if rhs.val == x{
                        leftX = true
                    }
                    if rhs.val == y{
                        rightX = true
                    }
                }
                if leftX == false{
                    leftRound += 1
                }
                if rightX == false{
                    rightRound += 1
                }
            }
            queue = newQueue
            if leftX, rightX{
                if leftRound == rightRound{
                    return false
                }
                else{
                    return true
                }
                
            }
        }
        return false
        
    }
    
    
    
    
    
    
    func test(){

        let s = Solution_F()

        var src = [1,2,3, nil, 4, nil ,5]
        // src = [1, 2, 4, 5, 3]
        let node = src.toTree

        let r = s.isCousins(node, 4, 5)

        print(r)

    }
}
