//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation

//  79. 单词搜索


// 指定开始，

// 递归标记


class Solution_a_a {
    
    let validChoice = [ (-1, 0), (0 , -1), (0, 1), (1, 0) ]
    
    
    
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        
        let rowCount = board.count
        let count = word.count
        guard rowCount > 0, count > 0 else {
            return true
        }
        
        let columnCount = board[0].count
        let start = word.startIndex
        var i = 0
        
        while i < rowCount {
            var j = 0
            while j < columnCount {
                if board[i][j] == word[start]{
                    var tagBoard = board
                    tagBoard[i][j] = "1"
                    if exist(start: tagBoard, word, startRow: i, startColumn: j, cursor: word.next(index: start)){
                        return true
                    }
                }
                j += 1
            }
            i += 1
        }
        
        return false
        
    }
    
    
    
    func exist(start board: [[Character]], _ word: String, startRow row: Int, startColumn column: Int, cursor cursorIndex: String.Index) -> Bool {
        guard cursorIndex < word.endIndex else {
            return true
        }
        let rowCount = board.count
        
        let columnCount = board[0].count
        
        for choose in validChoice{
                let cursorRow = row + choose.0, cursorColumn = column + choose.1
                var toJudge = true
                if cursorRow < 0 || cursorRow >= rowCount || cursorColumn < 0 || cursorColumn >= columnCount{
                    toJudge = false
                }
     
                if toJudge, board[cursorRow][cursorColumn] == word[cursorIndex]{
                    var map = board
                    map[cursorRow][cursorColumn] = "1"
//                    print("\n")
//                    print("map")
//                    print(map)
//                    print("word[cursorIndex]")
//
//                    print(word[cursorIndex])
//
//
//                    print("cursorRow")
//                    print(cursorRow)
//                    print("cursorColumn")
//                    print(cursorColumn)
//                    print("\n")
                    if exist(start: map, word, startRow: cursorRow, startColumn: cursorColumn, cursor: word.next(index: cursorIndex)){
                        return true
                        
                    }
                }
                
        }
        
        
        
        
        return false
        
    }
}



extension String{
    func next(index i: String.Index) -> String.Index{
        return self.index(after: i)
    }
}
