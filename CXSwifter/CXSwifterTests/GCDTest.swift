//
//  GCDTest.swift
//  CXSwifter
//
//  Created by Horex on 16/4/20.
//  Copyright © 2016年 Horex. All rights reserved.
//

import XCTest

@testable import CXSwifter

class GCDTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        
        let expectation = expectationWithDescription("succe")
        
        let test = GCDTask()
        let te = test.delay(2.0) {
            expectation.fulfill()
            print(123)
        }
        
//        test.cancel(te)
        
        waitForExpectationsWithTimeout(3) { (error) in
            
        }
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}