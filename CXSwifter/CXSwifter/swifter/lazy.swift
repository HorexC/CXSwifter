//
//  lazy.swift
//  CXSwifter
//
//  Created by Horex on 16/4/21.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

class LazyClassA {
    lazy var str: String = "Hello"
    lazy var str2: String = {
        let str = "Hello"
        print("只在首次访问输出")
        return str
    }()
}

func testLazy() {
    let data = 1...3
    let result = data.lazy.map {
        (i: Int) -> Int in
        print("正在处理 \(i)")
        return i * 2
    }
    
    print("准备访问结果")
    for i in result {
        print("操作后结果为 \(i)")
    }
    
    print("操作完毕")
}
