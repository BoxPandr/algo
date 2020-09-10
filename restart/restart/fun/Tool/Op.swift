//
//  Op.swift
//  restart
//
//  Created by Jz D on 2020/9/10.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



enum CompareState{
    case big, small, equal
}





infix operator ¥





func ¥(lhs: Int, rhs: Int) -> CompareState {
    if lhs == rhs{
        return .equal
    }
    else if lhs > rhs{
        return .big
    }
    else{
        return .small
    }
}

