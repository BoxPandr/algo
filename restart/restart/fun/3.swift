//
//  3.swift
//  restart
//
//  Created by Jz D on 2020/9/2.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


class Solution {
    
    
    func isNumber(_ s: String) -> Bool {
        guard s.isEmpty == false else {
            return false
        }
        
        let arr = Array(s)
        let symbols: [Character] = ["-", "+"]
        var result = false
        // 带正负号
        if symbols.contains(arr[0]){
            if isSimpleNum(Array(arr[1...])){
                result = true
            }
        }
        else{
            // 纯数字
            if isSimpleNum(arr){
                result = true
            }
        }
        
        return result
    }
    
    // 小数，指数，数字
    func isSimpleNum(_ arr: Array<Character>) -> Bool{
        guard arr.isEmpty == false else{
            return false
        }
        
        let symbols: Set<Character> = ["e", "E", "."]
        guard symbols.intersection([arr[0], arr[arr.count - 1]]).isEmpty else {
            return false
        }
        var result = true
        var littleE = 0, bigE = 0, dot = 0
        for ch in arr{
            switch ch {
            case "0"..."9":
                ()
            case "e":
                littleE += 1
            case "E":
                bigE += 1
            case ".":
                dot += 1
            default:
                return false
            }
        }
        if littleE + bigE > 1{
            result = false
        }
        if dot > 1{
            result = false
        }
        return result
    }
}




extension Solution {

    
    
    func test(){
        let s = Solution()

        var src = "+100"
        src = "1 "
         var result = s.isNumber(src)

         print(result)
        
        
    }
}
