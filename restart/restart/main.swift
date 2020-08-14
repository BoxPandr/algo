//
//  main.swift
//  restart
//
//  Created by Jz D on 2020/8/6.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



let s = Solution()

var src = [5,4,5,1,1,nil, 5]
src = [1,nil,1,1,1,1,1,1]
let node = src.toTree

print(node)

let r = s.longestUnivaluePath(node)

print(r)
