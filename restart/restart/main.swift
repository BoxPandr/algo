//
//  main.swift
//  restart
//
//  Created by Jz D on 2020/8/6.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation











let sso = Solution___h()


var sssource = [[3,12],[-2,5],[-4,1]]
sssource = [[0,0],[2,2],[3,10],[5,2],[7,0]]
//
//let rrrr = sso.minCostConnectPoints(sssource)
//
//print(rrrr)




let solve = Solution_a_a()

var src: [[Character]] = [ ["A","B","C","E"],
                           ["S","F","C","S"],
                           ["A","D","E","E"]]






var target = "ABCCED"
// target = "ABCB"

// target = "SEE"


src = [["a","b"],["c","d"]]

target = "abcd"



let result = solve.exist(src, target)

print(result)
