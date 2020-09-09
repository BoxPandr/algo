//  'B' 代表没有相邻（上，下，左，右，和所有4个对角线）地雷的已挖出的空白方块


/*
 我最初，
 还以为是给定的方阵的四条边
 
 上，下，左，右

 */


struct MineType {
    static let mine: Character = "M"
    static let initial: Character = "E"
    static let processing: Character = "B"
}



class Solution {
    
    // click 产生事件队列
    func updateBoard(_ board: [[Character]], _ click: [Int]) -> [[Character]] {
        let count = board.count
        
        guard count > 0 else {
            return board
        }
        
        var result = board
        let limit = board[0].count
        let column = click[0]
        
        let row = click[1]
        guard board[column][row] != MineType.mine else {
            result[column][row] = "X"
            return result
        }
        
        var actionQueue = [click]
        while actionQueue.isEmpty == false {
            
            let action = actionQueue.removeLast()
            
            var i = -1
            
            while i <= 1 {
                var j = -1
                
                while j <= 1 {
                    var goon = true
                    if i == 0, j == 0{
                        goon = false
                    }
                    
                    let rawX = action[0], x = rawX + i, rawY = action[1], y = rawY + j
                    
                    if x < 0 || x >= count || y < 0 || y >= limit{
                        goon = false
                    }
                    
                    if goon {
                        switch result[x][y] {
                        case MineType.processing:
                            ()
                        case MineType.initial:
                            result[x][y] = "B"
                            actionQueue.append([x, y])
                        case MineType.mine:
                            if let num = Int(String(result[rawX][rawY])), let n = UnicodeScalar(num + 1){
                                result[rawX][rawY] = Character(n)
                            }
                            else{
                                result[rawX][rawY] = "1"
                            }
                        default:
                            ()
                        }
                    }
                    
                    j += 1
                }
                i += 1
            }
            
            
            
        }
        
        return result
    }
}
