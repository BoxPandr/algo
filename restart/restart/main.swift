//
//  main.swift
//  restart
//
//  Created by Jz D on 2020/8/6.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



var src = [1,2,2,3,3,3,3,4,4,4,4,4,4, nil, nil,5,5]
src = [3,9,20, nil ,nil ,15,7]
//  src = [1,2,2,3,3,nil,nil,4,4]

let node = src.toTree


let sol = Solution_A()
let result = sol.isBalanced(node)

print(result)

let desp = node.visitInOrder()
print(desp)




