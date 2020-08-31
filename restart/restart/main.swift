//
//  main.swift
//  restart
//
//  Created by Jz D on 2020/8/6.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



let s = Solution_R()

var src: [Int?] = [1,2,3,4]
//  src = [1,2,3, nil , 4]


let node = src.toTree


var result = s.tree2str(node)



print(result)



