//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


class Solution__a {
    func diagonalSum(_ mat: [[Int]]) -> Int {
        let c = mat.count
        var result = 0
        let ood = (c % 2 == 1)
        for i in 0..<c{
            if ood, i == c / 2{
                result += mat[i][i]
            }
            else{
                result += mat[i][i]
                result += mat[i][c-1-i]
            }
            
        }
        return result
        
    }
}
