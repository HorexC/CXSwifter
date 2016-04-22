//
//  swiftPrintFormat.swift
//  CXSwifter
//
//  Created by Horex on 16/4/21.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

/*
 int a = 3;
 float b = 1.234567;
 NSString *c = @"Hello";
 NSLog(@"int:%d float:%f string:%@",a,b,c);
 // 输出：
 // int:3 float:1.234567 string:Hello

 */

/*
 let a = 3;
 let b = 1.234567  // 我们在这里不去区分 float 和 Double 了
 let c = "Hello"
 print("int:\(a) double:\(b) string:\(c)")
 // 输出：
 // int:3 double:1.234567 string:Hello
 */


// NSLog(@"float:%.2f",b);
// 输出：
// float:1.23

/*
 let format = String(format:"%.2f",b)
 print("double:\(format)")
 // 输出：
 // double:1.23
 */


extension Double {
    func format(f: String) -> String {
        return String(format: "%\(f)f", self)
    }
}

/**
 A demo method
 
 - parameter input: An Int number
 
 - returns: The string represents the input number
 */
func method(input: Int) -> String {
    return String(input)
}

