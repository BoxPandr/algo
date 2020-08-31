//
//  main.swift
//  restart
//
//  Created by Jz D on 2020/8/6.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation




let s = Solution()

var src: [Int?] = [1,2,2,3,4,4,3]

src = [1,2,2,nil,3,nil,3]

let node = src.toTree


var result = s.isSymmetric(node)

print(result)



