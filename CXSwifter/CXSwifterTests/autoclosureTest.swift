//
//  autoclosureTest.swift
//  CXSwifter
//
//  Created by Horex on 16/2/23.
//  Copyright © 2016年 Horex. All rights reserved.
//

import XCTest

@testable import CXSwifter

class autoclosureTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        logIfTrue({return 2 > 1})
        
        logIfTrue({ 2 > 1})
        
        logIfTrue{2 > 1}
        
        logIfTrueSimple(2 > 1)
        
        let adv : Int? = nil
        
        let ddd = adv +?? 2222
        
        XCTAssertEqual(ddd, 2222, "not ")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}
