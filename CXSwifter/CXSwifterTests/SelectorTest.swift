//
//  SelectorTest.swift
//  CXSwifter
//
//  Created by Horex on 16/2/19.
//  Copyright © 2016年 Horex. All rights reserved.
//

import XCTest

@testable import CXSwifter

class SelectorTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        let clock = Clock()
        
        clock.setClock()
        let arr = [0,2,4,6,8]
        
        for i in ReverseSequence(array: arr) {
            print("Index \(i) is \(arr[i])")
        }
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}
