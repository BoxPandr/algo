//
//  main.swift
//  restart
//
//  Created by Jz D on 2020/8/6.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



let s = Solution()

var src = [90,69,nil,49,89,nil,52]

let node = src.toTree

print(node)

let r = s.minDiffInBST(node)

print(r)
