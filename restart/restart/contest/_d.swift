//
//  _a.swift
//  restart
//
//  Created by Jz D on 2020/9/5.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation


// 思路是还原操作

// slide 是 x???y

// y?, 需要特殊处理





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
            var assist = [String.Element]()
            var writes = false
            if j < count, arr[j] == "?"{
                
                writes = true
                
                slide.append(arr[j])
                
                
                j+=1
            }
            
            if writes{
                if i > 0{
                    assist.append(arr[i - 1])
                }
                if j < count{
                    assist.append(arr[j])
                }
            }
            
            
            var k = 0
            
            for piece in assist{
                set.remove(piece)
            }
    
            
            while k < slide.count{
                slide[k] = set[set.startIndex]
                set.remove(slide[k])
                k += 1
            }
            
            
            arr.replaceSubrange(i..<(i + slide.count), with: slide)
            
            
            
            i+=1
        }
        
        
        
        return arr.map { String($0)}.joined()
        
        
    }
    
    
    
    func modifyString_poor(_ s: String) -> String {
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
            
            
            var start = i
            if start > 0{
                start -= 1
            }
            var end = slide.count - 1
            if writes{
                if i > 0{
                    set.remove(slide[0])
                    k = 1
                }
                if j < count{
                    set.remove(slide[slide.count - 1])
                }
                else{
                    end += 1
                }
            }
            
            while k < end{
                slide[k] = set[set.startIndex]
                
                set.remove(slide[k])
                
                k += 1
            }
            
            
            arr.replaceSubrange(start..<(start + slide.count), with: slide)
            
            
            
            i+=1
        }
        
        
        
        return arr.map { String($0)}.joined()
        
        
    }
}




extension Solution__d {

    func test(){
        let x = Solution__d()

        var sr_c = "?zs"

         sr_c = "ubv?w"


         sr_c = "??yw?ipkj?"
         sr_c = "jgywjipkj?"
         let resul_t = x.modifyString(sr_c)


         print(resul_t)
    }

}
