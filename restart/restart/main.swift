//
//  main.swift
//  restart
//
//  Created by Jz D on 2020/8/6.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation




let s = Solution()

var src: [Int?] = [3,9,20, nil ,nil,15,7]
//  src = [1,2,3,4,5]


let node = src.toTree


var result = s.sumOfLeftLeaves(node)

print(result)



