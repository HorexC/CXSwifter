//
//  tupleTest.swift
//  CXSwifter
//
//  Created by Horex on 16/2/23.
//  Copyright © 2016年 Horex. All rights reserved.
//

import XCTest

@testable import CXSwifter

class tupleTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        
        var i = 10, j = 20
        
        swapMeTuple(&i, b: &j)
//        swapMe(&i, b: &j)

        XCTAssertEqual(i, 20, "errorChange")
        var re1: CGRect, re2: CGRect
        (re1, re2) = CGRect(x: 0, y: 0, width: 100, height: 100).myDivide(20, fromEdge: .MaxYEdge)
        
        print("\(re1)" + "\(re2)")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}
