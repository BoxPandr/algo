//
//  main.swift
//  restart
//
//  Created by Jz D on 2020/8/6.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



let s = Solution()

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


print(result)



