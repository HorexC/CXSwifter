//
//  convertible.swift
//  CXSwifter
//
//  Created by Horex on 16/2/23.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation


enum MyBool: Int {
    case myTrue, myFalse
}

extension MyBool: BooleanLiteralConvertible {
    init(booleanLiteral value: Bool) {
        self = value ? myTrue : myFalse
    }
}

class Person: StringLiteralConvertible {
    let name: String
    init(name value: String) {
        self.name = value
    }
    
    required convenience init(stringLiteral value: String) {
        self.init(name: value)
    }

    required convenience init(extendedGraphemeClusterLiteral value: String) {
        self.init(name: value)
    }
    
    required convenience init(unicodeScalarLiteral value: String) {
        self.init(name: value)
    }
}