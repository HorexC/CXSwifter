//
//  operatorTest.swift
//  CXSwifter
//
//  Created by Horex on 16/2/23.
//  Copyright © 2016年 Horex. All rights reserved.
//

import XCTest

@testable import CXSwifter

class operatorTest: XCTestCase {

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
        
        let v1 = Vector2D(x: 2.0, y: 3.0)
        let v2 = Vector2D(x: 1.0, y: 4.0)
        
        let v3 = v1 + v2
        let v4 = v1 +* v2
        XCTAssertEqual(v3.x, 3.0, "error")
        
        XCTAssertEqual(v4.y, 12, "+= error")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}
