//
//  funtionalProgrammingTest.swift
//  CXSwifter
//
//  Created by Horex on 16/2/28.
//  Copyright © 2016年 Horex. All rights reserved.
//

import XCTest

@testable import CXSwifter

class funtionalProgrammingTest: XCTestCase {

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
        testFuncPro()
    }
    
    func testMapAndFlatMap() {
        let arr = [[1,2,3],[3,4,5]]
        
        let brr = arr.map({
            return $0
        }).flatten()
        
        let crr = arr.flatMap({ return $0 })
        
        print(brr);
        print(crr);
        
    }
    
    
    func testArray() {
        let a1: Int? = 3
        let b1 = a1.map{ $0 * 2 }
        // b1 = 6
        
        let a2: Int? = nil
        let b2 = a2.map{ $0 * 2 }
        // b2 = nil
        
        let s: String? = "abc"
        let sn: String? = "123"

        let v = s.flatMap { (a: String) -> Int? in
            return Int(a)
        }
        
        let vn = sn.flatMap { (a: String) -> Int? in
            return Int(a)
        }
        
        let v2 = s.map { (a: String) -> Int? in
            return Int(a)
        }
        
        print(b1)
        print(b2)
        print(v)
        print(v2)
        print(vn)
        

    }
    
    func testOption() {
        let tq:Int? = 1
        let b = tq.map { (a: Int) -> Int? in
            if a%2 == 0 {
                return a
            } else {
                return nil
            }
        }
        
        if let _ = b {
            print("not null")
        }
        
        let c = tq.flatMap{ (a: Int) -> Int? in
            if a%2 == 0 {
                return a
            } else {
                return nil
            }
        }
        if let _ = c {
            print("not null")
        }
        
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}
