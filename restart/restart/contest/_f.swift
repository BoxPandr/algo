//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



class Solution___f {
    func numSpecial(_ mat: [[Int]]) -> Int {
        
        let rowCount = mat.count
        
        guard rowCount > 0 else {
            return 0
        }
        let columnCount = mat[0].count
        var result = 0
        var i = 0
        while i < rowCount {
            var j = 0
            while j < columnCount {
                if mat[i][j] == 1{
                    var k = 0
                    var noMet = true
                    while k < rowCount {
                        if mat[k][j] == 1{
                            if k != i{
                                noMet = false
                            }
                        }
                        k += 1
                    }
                    k = 0
                    while k < columnCount {
                        if mat[i][k] == 1{
                            if k != j{
                                noMet = false
                            }
                        }
                        k += 1
                    }
                    if noMet{
                        result += 1
                    }
                }
                
                
                j += 1
            }
            
            i += 1
        }
        
       
        return result
        
        
        
        
    }
    
    
    func test(){
        let s = Solution___f()

        var source = [[1,0,0],
                      [0,0,1],
                      [1,0,0]]


        source = [[1,0,0],
                  [0,1,0],
                  [0,0,1]]


        let answer = s.numSpecial(source)


        print(answer)

    }
}
