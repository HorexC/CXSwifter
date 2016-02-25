//
//  methodNameTest.swift
//  CXSwifter
//
//  Created by Horex on 16/2/23.
//  Copyright © 2016年 Horex. All rights reserved.
//

import XCTest

@testable import CXSwifter

func say(color color: String, _ name: String) -> Bool {
    return false
}

class methodNameTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        let ca = Car(color: UIColor.redColor(), weight: 100)
        ca.moveTo(123, y: 123)
        Car.findCar("123", age: "123")
        
        findCar("123", age: "123")
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}
