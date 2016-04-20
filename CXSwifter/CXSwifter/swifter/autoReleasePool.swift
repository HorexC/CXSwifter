

//
//  autoReleasePool.swift
//  CXSwifter
//
//  Created by Horex on 16/3/8.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation
import UIKit


func useAutoReleasePool() {
    for i in 1...1000 {
        let data = NSData(contentsOfFile: "")
    }
    autoreleasepool {
        
    }

}

func sayHello1(str1: String = "Hello", str2: String, str3: String) {
    print(str1 + str2 + str3)
}

func sayHello2(str1: String, str2: String, str3: String = "World") {
    print(str1 + str2 + str3)
}
