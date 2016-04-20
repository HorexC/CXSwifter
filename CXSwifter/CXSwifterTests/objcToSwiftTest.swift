//
//  objcToSwiftTest.swift
//  CXSwifter
//
//  Created by Horex on 16/2/28.
//  Copyright © 2016年 Horex. All rights reserved.
//

import XCTest

class objcToSwiftTest: XCTestCase {

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
        
        var someArray: [Int]
        
        someArray = [1, 2, 3]
        
        let result = someArray.map({ "NO. \($0)" })
        
        print(result)
        
        var otherArray: [Int]?
        
        otherArray = [1, 2, 3]
        
        let result2 = otherArray.map({ "NO. \($0)" })
        
        print(result2)
        
        
        
        class Person {
            var value = 99
            
        }
        let p1 = Person()
        let p2 = Person()
        let p3 = Person()
        let p4 = Person()
        let p5 = Person()
        var array1:Array = [p1,p2,p3,p4,p5]
        var array2 = array1
        array2.removeLast()
        array2.first!.value = 100
        print(array1.first!.value)
        
        var dict: [String: String?] = ["key": "value"]
        
        var nilValue: String?
        
        nilValue = nil
        
//        dict["key"] = nilValue
        dict["key"] = Optional<String>.None
        
//        dict["key"] = Optional<Optional<String>>.None
        
        print(dict)
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}
