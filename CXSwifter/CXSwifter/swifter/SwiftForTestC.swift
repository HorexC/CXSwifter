//
//  SwiftForTestC.swift
//  CXSwifter
//
//  Created by Horex on 16/4/21.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

// user bridge

//func testCFunction() {
//    let result = test(3)
//    print(result)
//}


// use @asmname

@_silgen_name("test") func c_test(a: Int32) -> Int32


func testCFunction() {
    let result = c_test(3)
    print(result)
}