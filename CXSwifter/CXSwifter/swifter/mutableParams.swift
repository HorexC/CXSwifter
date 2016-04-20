//
//  mutableParams.swift
//  CXSwifter
//
//  Created by Horex on 16/3/8.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

func sum(input: Int...) -> Int {
    return input.reduce(0, combine: +)
}

func myFunc(numbers: Int...,string: String) {
    numbers.forEach{
        for i in 0 ..< $0 {
            print("\(i + 1): \(string)")
        }
    }
    
    let arr = []
    for (index, value) in arr.enumerate() {
        
            print("\(index) + \(value)")
        
    }
}

//extension NSString {
//    convenience init(format: NSString, _ args: CVarArgType...) {
//
//    }
//}