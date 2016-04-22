//
//  StackOutOffTest.swift
//  CXSwifter
//
//  Created by Horex on 16/4/22.
//  Copyright © 2016年 Horex. All rights reserved.
//

import XCTest

class StackOutOffTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        class MyTestStack {
            var a: Int = 1
            func method() {
                a = a * 100000
                a = a * 100000
                a = a * 100000
                print(a)
            }
        }
        var max = Int.max
        max = max &+ 1
        
        // 64 位系统下
        // max = -9,223,372,036,854,775,808
        
//        溢出加法 (&+)
//        溢出减法 (&-)
//        溢出乘法 (&*)
//        溢出除法 (&/)
//        溢出求模 (&%)

        
        MyTestStack().method()
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}
