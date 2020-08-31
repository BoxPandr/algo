//
//  N_Array.swift
//  restart
//
//  Created by Jz D on 2020/8/31.
//  Copyright © 2020 Jz D. All rights reserved.
//

import Foundation



//  Definition for a Node


public class Node {
    
    public var val: Int
    public var children: [Node]
    
    
    public init(_ val: Int) {
        self.val = val
        self.children = []
    }
}

