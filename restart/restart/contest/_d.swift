//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation

class Solution__d {
    func modifyString(_ s: String) -> String {
        let count = s.count
        guard count > 0 else{
            return ""
        }
        
        var arr = Array(s)
        let aScalars = "a".unicodeScalars
        let aCode = aScalars[aScalars.startIndex].value
        
        let letters: [Character] = (0..<26).map {
            i in
            Character(Unicode.Scalar(aCode + i) ?? aScalars[aScalars.startIndex])
        }
        
        
        var i = 0
        while i < count {
            
            
            
            var j = i
            
            
            var set = Set(letters)
            var slide = [String.Element]()
            var writes = false
            if j < count, arr[j] == "?"{
                
                writes = true
                
                slide.append(arr[j])
                
                
                j+=1
            }
            
            if writes{
                if i > 0{
                    slide.insert(arr[i - 1], at: 0)
                }
                if j < count{
                    slide.append(arr[j])
                }
            }
            
            
            var k = 0
            if writes{
                if i > 0{
                    set.remove(slide[0])
                    k = 1
                }
                set.remove(slide[slide.count - 1])
            }
            
            while k < slide.count - 1{
                slide[k] = set[set.startIndex]
                
                set.remove(slide[k])
                
                k += 1
            }
            var start = i
            if start > 0{
                start -= 1
            }
            
            arr.replaceSubrange(start..<(start + slide.count), with: slide)
            
            
            
            i+=1
        }
        
        
        
        return arr.map { String($0)}.joined()
        
        
    }
}
