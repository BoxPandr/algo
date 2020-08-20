//
//  main.swift
//  restart
//
//  Created by Jz D on 2020/8/6.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



let s = Solution()

var src = [5,3,6,2,4,nil,7]

let node = src.toTree

print(node)

let r = s.findTarget(node, 28)

print(r)

