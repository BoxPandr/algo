//
//  1.swift
//  restart
//
//  Created by Jz D on 2020/8/31.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


//  841. 钥匙和房间

//  广度优先，大法好

class Solution_1 {
    func canVisitAllRooms(_ rooms: [[Int]]) -> Bool {
        guard rooms.count > 1 else{
            return true
        }
        var result = Array(1...(rooms.count-1))
        var actionQueue = rooms[0]
        var checked = [Int]()
        while actionQueue.isEmpty == false {
            let action = actionQueue.removeFirst()
            result.removeAll { (ele) -> Bool in
                ele == action
            }
            checked.append(action)
            let prepareAction = rooms[action]
            for a in prepareAction{
                if checked.contains(a) == false{
                    actionQueue.append(a)
                }
            }
        }
        return result.isEmpty
    }
    
    
    
    func test(){
        let s = Solution_1()

        var src = [[1],[2],[3],[]]


        var result = s.canVisitAllRooms(src)



        print(result)
    }
}
