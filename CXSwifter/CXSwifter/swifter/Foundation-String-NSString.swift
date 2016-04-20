//
//  Foundation-String-NSString.swift
//  CXSwifter
//
//  Created by Horex on 16/4/19.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

//let string = "/var/controller_driver/secret_photo.png"
//
//let components_ = string.pathComponents as NSArray
//let fileName_ = components_.lastObject as! NSString
//
//components_.dynamicType //_SwiftDeferredNSArray.Type
//fileName_.dynamicType   //__NSCFString.Type

func testNSStringAndString()  {
    let levels = "ABCDE"
    for i in levels.characters {
        print(i)
    }
    
    (levels as NSString).containsString("")
    
    let nsRange = NSRange(location: 1, length: 4)
    
//    levels.stringByReplacingCharactersInRange(nsRange, withString: "123")
    
    let indexPositionOne = levels.startIndex.successor()
    
    let swiftRange = indexPositionOne ..< indexPositionOne.advancedBy(4)
//    let oneR = 0 ..< 4

    levels.stringByReplacingCharactersInRange(swiftRange, withString: "123")
    
    (levels as NSString).stringByReplacingCharactersInRange(nsRange, withString: "123")
    
    
}