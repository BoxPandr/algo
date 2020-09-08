//
//  main.swift
//  restart
//
//  Created by Jz D on 2020/8/6.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



let solve = Solution_V()

var base: [Int?] = [3,4,5,1,2]

base = [3,4,5,1,2, nil, nil, nil, nil , 0]
base = [1, 1]
var child = [4, 1, 2]
child = [1]
guard let p = base.toTree, let c = child.toTree else{
    fatalError()
}
print(p)

print(c)
let result = solve.isSubtree(p, c)

print(result)








