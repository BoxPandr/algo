//
//  3.swift
//  restart
//
//  Created by Jz D on 2020/9/2.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


class Solution_3_a {
    
    
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




extension Solution_3_a {

    
    
    func test(){
        let s = Solution_3_a()

        var src = "+100"
        src = "1 "
         var result = s.isNumber(src)

         print(result)
        
        
    }
}

enum State {
    case initial,
    int_sign,
    integer,
    point,
    point_without_int,
    fraction,
    exp,
    exp_sign,
    exp_number,
    end
}

enum CharType {
    case number,
    exp,
    point,
    sign,
    space,
    illegal
}



extension Character{
    var charT: CharType{
         if self >= "0", self <= "9"{
            return .number
        } else if self == "e" || self == "E"{
            return .exp
        } else if self == "."{
            return .point
        } else if self == "+" || self == "-"{
            return .sign
        } else if self == " "{
            return .space
        } else {
            return .illegal
        }
    }
    
    
}



class Solution {

    // 有限， 状态机
    
    func isNumber(_ s: String) -> Bool {
        let transfer: [State: [CharType: State]] = [
            .initial: [.space: .initial,
                       .number: .integer,
                       .point: .point_without_int,
                       .sign: .int_sign],
            .int_sign: [ .number: .integer,
                         .point: .point_without_int],
            .integer:  [.number: .integer,
                        .exp: .exp,
                        .point: .point,
                        .space: .end],
            .point: [.number: .fraction,
                     .exp: .exp,
                     .space: .end],
            .point_without_int: [.number: .fraction],
            .fraction: [.number: .fraction,
                        .exp: .exp,
                        .space: .end],
            .exp: [.number: .exp_number,
                   .sign: .exp_sign],
            .exp_sign: [.number: .exp_number],
            .exp_number: [.number: .exp_number,
                          .space: .end],
            .end: [.space: .end]
        ]
        
        
        
        
    }
    
 

}


//
//        int len = s.length();
//        State st = STATE_INITIAL;
//
//        for (int i = 0; i < len; i++) {
//            CharType typ = toCharType(s[i]);
//            if (transfer[st].find(typ) == transfer[st].end()) {
//                return false;
//            } else {
//                st = transfer[st][typ];
//            }
//        }
//        return st == STATE_INTEGER || st == STATE_POINT || st == STATE_FRACTION || st == STATE_EXP_NUMBER || st == STATE_END;
//

