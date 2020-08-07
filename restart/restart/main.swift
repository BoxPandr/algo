//
//  main.swift
//  restart
//
//  Created by Jz D on 2020/8/6.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


let sol = Solution()
var src = [1,0,1,0,1,0,1]
// src = [1,0,1]
let node = src.toTree

var result = sol.sumRootToLeaf(node)


result = sol.sumRootTo(leaf: node)
print(result)
