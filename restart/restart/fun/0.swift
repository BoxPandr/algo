//
//  0.swift
//  restart
//
//  Created by Jz D on 2020/8/20.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


// E， 未处理的，未标记的，产生事件


// B,  blank，没雷的， 不产生事件
//  可中间状态， 可改变为数字

// B, 不是边缘




// 数字， 终止状态， 不产生事件










//  529 扫雷游戏










// 第一次，扫到雷，结束


// 第一次，没扫到雷，
//  全部扫完，结束


class Solution_zero {
    func updateBoard(_ board: [[Character]], _ click: [Int]) -> [[Character]] {
        
        let m = board.count, n = board[0].count
        
        var result = board
        var actionQueue = [click]
        while actionQueue.isEmpty == false {
            let action = actionQueue.removeFirst()
            let row = action[0], colume = action[1]
            if result[row][colume] == "M"{
                // Mine
               result[row][colume] = "X"
            }
            else { // Empty
                // Get number of mines first.
                var count = 0
                for i in -1...1{
                    for j in -1...1{
                        var doThings = true
                        if i == 0, j == 0{
                            doThings = false
                        }
                        let r = row + i, c = colume + j
                        // 处理边缘
                        if r < 0 || r >= m || c < 0 || c >= n{
                            doThings = false
                        }
                        if doThings, ["M", "X"].contains(result[r][c]){
                            count += 1
                        }
                    }
                }
                if count > 0{
                    // If it is not a 'B', stop further BFS.
                    let val = String(count)
                    result[row][colume] = Character(val)
                    
                }
                else {
                    // Continue BFS to adjacent cells.
                    result[row][colume] = "B"
                    for i in -1...1{
                        for j in -1...1{
                            var doThings = true
                            if i == 0, j == 0{
                                doThings = false
                            }
                            let r = row + i, c = colume + j
                            // 处理边缘
                            if r < 0 || r >= m || c < 0 || c >= n{
                                doThings = false
                            }
                            if doThings, result[r][c] == "E"{
                                actionQueue.append([r, c])
                                result[r][c] = "B"
                                // Avoid to be added again.
                            }
                        }
                    }
                }
            }
          //  print(action)
         //   result.debug()
         //   print(actionQueue)
          //  print("\n")
        }
        
        
        return result
    }
}



extension Solution_zero {
    
    
    func test(){

        let s = Solution_zero()

        //  var src = [1,2,3,4]

        //let node = src.toTree

        //print(node)

        var board: [[Character]] = [
                    ["E","E","E","E","E"],
                    ["E","E","M","E","E"],
                    ["E","E","E","E","E"],
                    ["E","E","E","E","E"]
                    ]



        var tap = [3,0]



        var result = s.updateBoard(board, tap)


        result.debug()

    }


}
