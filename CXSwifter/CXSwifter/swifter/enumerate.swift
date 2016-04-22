//
//  enumerate.swift
//  CXSwifter
//
//  Created by Horex on 16/4/21.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

/**
 NSArray *arr = @[@1, @2, @3, @4, @5];
 __block NSInteger result = 0;
 [arr enumerateObjectsUsingBlock:^(NSNumber *num, NSUInteger idx, BOOL *stop) {
 result += [num integerValue];
 if (idx == 2) {
 *stop = YES;
 }
 }];
 
 NSLog(@"%ld", result);
 // 输出：6

 */

func testEnumerate() {
    let arr: NSArray = [1,2,3,4,5]
    var result = 0
    arr.enumerateObjectsUsingBlock { (num, idx, stop) in
        result += num as! Int
        if idx == 2 {
            stop.memory = true
        }
    }
    
    for (idx, num) in [1,2,3,4,5].enumerate() {
        result += num
        if idx == 2 {
            break
        }
    }
    
}