//
//  protocolsTest.swift
//  CXSwifter
//
//  Created by Horex on 16/2/28.
//  Copyright © 2016年 Horex. All rights reserved.
//

import XCTest

@testable import CXSwifter

class protocolsTest: XCTestCase {

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
        
        let p1: MyPerson = ["cat", "1"]
        
        let p2: MyPerson = ["kat", "1"]
        
        let isEqual = p1 == p2
        
        XCTAssert(isEqual, "wrong")
        
        
        let p3: PersonH = PersonH()
        
        p3.sayHello()
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}
