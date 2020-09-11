//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


struct Limitation {
    let src: [Int]
    let upmost: Int
    
    init() {
        src = Array(1...9)
        
        upmost = src.reduce(0){ (previousSum, element) -> Int in
            previousSum + element
        }
    }
}


class Solution_8 {
    
    
    
    
    let limite = Limitation()
    
    
    
    
    func combinationSum3(_ k: Int, _ n: Int) -> [[Int]] {
        
        
        guard n <= limite.upmost, n >= 0, k > 0 else {
            return []
        }
        
        
        return combination(from: limite.src, rest: k, target: n)
        
        
    }
    
    private
    func combination(from src: [Int], rest k: Int, target n: Int) -> [[Int]] {
        print("\n")
        print("src")
        print(src)
        
        print("rest")
        print(k)
        
        print("target")
        print(n)
        print("\n")
        guard k > 1, n > 0 else {
            if k == 1, n > 0{
                let cake = src.filter({ (bullet) -> Bool in
                    bullet == n
                })
                if cake.isEmpty == false{
                    return [cake]
                }
            }
            return []
        }
        
        var backup = src
        
        var i = backup.count - 1
        while i >= 0 {
            if src[i] > n{
                backup.removeLast()
            }
            else{
                break
            }
            i -= 1
        }
        var result = [[Int]]()
        while backup.isEmpty == false {
            let ele = backup.removeLast()
            switch n ¥ ele{
            case .big:
                var contain = combination(from: backup, rest: k - 1, target: n - ele)
                let count = contain.count
                if count > 0{
                    var j = 0
                    while j < contain.count {
                        contain[j].append(ele)
                        j += 1
                    }
                }
                result.append(contentsOf: contain)
            case .equal:
                result.append([ele])
            case .small:
                break
            }
            
            
        }
        
        
        return result
    }
}
