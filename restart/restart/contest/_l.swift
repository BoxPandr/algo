//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


class Solution_____l {
    func reorderSpaces(_ text: String) -> String {
        var result = text
        let count = text.count
        guard count > 0 else {
            return result
        }
        var spaceNumber = 0, wordCount = 0
        var words = [String]()
        var wordStart = true
        for char in text{
            
            
            
            if char == " "{
                spaceNumber += 1
                wordStart = true
            }
            else{
                let str = String(char)
                if wordStart{
                    wordStart = false
                    wordCount += 1
                    words.append(str)
                }
                else{
                    words[words.count - 1].append(str)
                }
                
            }
        }
        guard wordCount > 1 else {
            if wordCount == 1{
                let final = [String](repeating: " ", count: spaceNumber).joined(separator: "")
                result = words.joined(separator: "")
                
                return result.appending(final)
            }
            else{
                return result
            }
            
        }
        
        let stdSpace = spaceNumber / (wordCount - 1)
        let extraSpace = spaceNumber % (wordCount - 1)
        let split = [String](repeating: " ", count: stdSpace).joined(separator: "")
        let final = [String](repeating: " ", count: extraSpace).joined(separator: "")
        result = words.joined(separator: split)
        
        return result.appending(final)
        
    }
}
