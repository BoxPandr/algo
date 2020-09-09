//
//  main.swift
//  reTry
//
//  Created by Jz D on 2020/9/9.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


var src: [[Character]] = [["E", "E", "E", "E", "E"],
                          ["E", "E", "M", "E", "E"],
                          ["E", "E", "E", "E", "E"],
                          ["E", "E", "E", "E", "E"]]



/*

src = [["B", "1", "E", "1", "B"],
       ["B", "1", "M", "1", "B"],
       ["B", "1", "1", "1", "B"],
       ["B", "B", "B", "B", "B"]]


**/

var click = [3, 0]

//  click = [1,2]

let solve = Solution()

let result = solve.updateBoard(src, click)

result.forEach {
    print($0)
}
