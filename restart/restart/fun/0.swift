//
//  0.swift
//  restart
//
//  Created by Jz D on 2020/8/20.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


class Solution {
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
            result.debug()
            print("\n")
        }
        
        
        return result
    }
}
