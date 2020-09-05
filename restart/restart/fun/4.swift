//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



class Solution_4{
    
    
    func getPermutation(_ n: Int, _ k: Int) -> String {
        guard n > 0 else {
            return ""
        }
        
        
 
        var result = [String]()
        var base = ""
        for i in 1...n{
            base += "\(i)"
        }
        result.append(base)
        
        
        
        return result[k]
    }
}
