//
//  main.swift
//  restart
//
//  Created by Jz D on 2020/8/6.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



let s = Solution()

var src = [1, 2, 3]

src = [1,2,3,4, 0,5]

let node = src.toTree

let r = s.findTilt(node)

print(r)
