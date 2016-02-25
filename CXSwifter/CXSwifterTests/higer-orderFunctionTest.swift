//
//  higer-orderFunctionTest.swift
//  CXSwifter
//
//  Created by Horex on 16/2/24.
//  Copyright © 2016年 Horex. All rights reserved.
//

import XCTest

@testable import CXSwifter

class higer_orderFunctionTest: XCTestCase {

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
        
        let persons: [[String: AnyObject]] = [["name": "Carl Saxon", "city": "New York, NY", "age": 44],
            ["name": "Travis Downing", "city": "El Segundo, CA", "age": 34],
            ["name": "Liz Parker", "city": "San Francisco, CA", "age": 32],
            ["name": "John Newden", "city": "New Jersey, NY", "age": 21],
            ["name": "Hector Simons", "city": "San Diego, CA", "age": 37],
            ["name": "Brian Neo", "age": 27]]
        
        let result = infoFromSate(state: "CA", persons: persons)
        XCTAssertEqual(result, 3, "error")
        
        
        let arrays = cxMap([1,2,3], transform: { $0 * 2} )
        
        print(arrays)
        let ( a123,  b123) = partition([1, 2, 3, 4, 5, 6, 7, 8, 9], criteria: { $0 % 2 == 0 })
        print(a123 + b123)
        
        simpleTest()
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}
