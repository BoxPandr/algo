//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation

//  79. 单词搜索

class Solution_a_a {
    
    
    
    
    
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
        
        var i = -1
        while i <= 1{
            var j = -1
            while j <= 1 {
                let cursorRow = row + i, cursorColumn = column + j
                var toJudge = true
                if cursorRow < 0 || cursorRow >= rowCount || cursorColumn < 0 || cursorColumn >= columnCount{
                    toJudge = false
                }
                if i == 0, j == 0{
                    toJudge = false
                }
                if toJudge, board[cursorRow][cursorColumn] == word[cursorIndex]{
                    var map = board
                    map[cursorRow][cursorColumn] = "1"
                    if exist(start: map, word, startRow: cursorRow, startColumn: cursorColumn, cursor: word.next(index: cursorIndex)){
                        return true
                        
                    }
                }
                
                
                j += 1
            }
            
            
            i += 1
        }
        
        
        
        
        return false
        
    }
}



extension String{
    func next(index i: String.Index) -> String.Index{
        return self.index(after: i)
    }
}
