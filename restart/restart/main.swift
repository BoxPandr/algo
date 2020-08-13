//
//  main.swift
//  restart
//
//  Created by Jz D on 2020/8/6.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



let s = Solution()

var src = [3,5,1,6,2,9,8,nil,nil,7,4]

let node = src.toTree

src = [3,5,1,6,7,4,2,nil,nil,nil,nil,nil,nil,9,8]

let nodeRhs = src.toTree

let r = s.leafSimilar(node, nodeRhs)

print(r)
