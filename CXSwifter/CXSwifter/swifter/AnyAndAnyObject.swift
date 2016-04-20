//
//  AnyAndAnyObject.swift
//  CXSwifter
//
//  Created by Horex on 16/2/25.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation
//import UIKit

func someMethod() -> AnyObject? {
    return nil
}

//func testAnyObject() {
//    let anyObject: AnyObject? = SomeClass.someMethod()
//    if let someInstance = anyObject as? SomeRealClass {
//        someInstance.funcOfSomeRealClass()
//    }
//}

func diffFormAnyAndAnyObject() {
    let swiftInt: Int = 1
    let swiftString: String = "miao"
    var arr: [AnyObject] = []
    let aa =  arc4random_uniform(100)

    arr.append(swiftInt)
    arr.append(swiftString)
    
    var arr2: [Any] = []
    
    arr2.append(swiftInt)
    arr2.append(swiftString)
    
}

enum IntOrString {
    case IntValue(Int)
    case StringValue(String)
}

func getvalue() {
    let mixed = [IntOrString.IntValue(12)]
    for value in mixed {
        switch value {
        case let .IntValue(i):
            print(i * 2)
        case let .StringValue(s):
            print(s.capitalizedString)
        }
    }
}



