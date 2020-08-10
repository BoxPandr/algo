//
//  main.swift
//  restart
//
//  Created by Jz D on 2020/8/6.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



let s = Solution()

var src = [1, 0, 2]
var lhs = 1
var rhs = 2
src = [3, 0, 4, 0, 2, 0, 0, 0,  0,  1]
rhs = 3
let node = src.toTree

let r = s.trimBST(node, lhs, rhs)


print(r)
