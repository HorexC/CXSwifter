//
//  autoclosure.swift
//  CXSwifter
//
//  Created by Horex on 16/2/23.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation


func logIfTrue(predicate: () -> Bool) {
    if predicate() {
        print("True")
    }
}

func logIfTrueSimple(@autoclosure predicate: () -> Bool) {
    if predicate() {
        print("True")
    }
}




infix operator +?? { associativity right precedence 123}

func +??<T>(optional: T?, @autoclosure defaultValue: () -> T ) -> T {
    switch optional {
    case .Some(let value):
        return value
    case .None:
        return defaultValue()
    }
}



func incrementor(var variable: Int) -> Int {
    return ++variable
}

//func incrementor(inout variable: Int) -> Int {
//    return ++variable
//}

func makeIncrementor(addNumber: Int) -> ((inout Int) -> Int) {
    func increment(inout variable: Int) -> Int {
        return addNumber + variable
    }
    return increment
}


