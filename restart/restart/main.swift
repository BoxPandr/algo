//
//  main.swift
//  restart
//
//  Created by Jz D on 2020/8/6.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



let s = Solution()

var src = [5,3,6,2,4,nil ,8,1, nil, nil, nil,7,9]
// src = [1, 2, 4, 5, 3]
let node = src.toTree

let r = s.increasingBST(node)

print(r)
