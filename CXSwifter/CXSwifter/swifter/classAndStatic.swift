//
//  classAndStatic.swift
//  CXSwifter
//
//  Created by Horex on 16/3/8.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

struct Point {
    let x: Double
    let y: Double
    
    static let zero = Point(x: 0, y: 0)
    
    static var ones: [Point] {
        return [Point(x: 1, y: 1)]
    }
    
    static func add(p1: Point, p2: Point) -> Point {
        return Point(x: 0, y: 0)
    }
}

func testPoint123() {
    Point.zero
    
//    Point.add(<#T##p1: Point##Point#>, p2: <#T##Point#>)
    
    MyClassT.teee()
}

class MyClassT {
    class func teee() {}
}

//class MyManager  {
//    static let sharedInstance = MyManager()
//    private init() {}
//}

protocol MyProtocol {
    static func foo()
}

extension Point: MyProtocol {
    static func foo() {
        
    }
}

extension MyClassT: MyProtocol {
    static func foo() {
        
    }
}

class myswiftClass: NSObject {
    
}

class forOCClass: AnyObject{
    @objc func hello() {
        
    }
}


