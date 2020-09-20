//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



class Solution_m______ {
    func maxUniqueSplit(_ s: String) -> Int {
        let count = s.count
        guard count > 0 else{
            return 0
        }
        let arr = Array(s)
        var exist = Set<String>()
        
        var i = 0
        
        while i < count {
            let str = String(arr[i])
            
            if exist.contains(str) == false{
                
                exist.insert(str)
            }
            else{
                var sub = ""
                while i < count {
                    let str = String(arr[i])
                    sub.append(contentsOf: str)
                    if exist.contains(sub) == false{
                        exist.insert(sub)
                        break
                    }
                    i += 1
                }
            }
            
            
            i += 1
        }
        

        
        return exist.count
    }
}
