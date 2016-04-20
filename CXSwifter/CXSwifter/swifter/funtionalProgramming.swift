//
//  funtionalProgramming.swift
//  CXSwifter
//
//  Created by Horex on 16/2/28.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation
import UIKit

func testFuncPro() {
    let nums = [1, 2, 3, 4]
    var strs = [String]()
    for num in nums {
        strs.append(String(num))
    }
    
    print(strs)
    
    var funStrs = [String]()
    
    funStrs = nums.map(String.init)
    
    print(funStrs)
    
    let funsN = nums.map{ String($0) }
    
    print(funsN)
}


func curry() {
//    func x(a: A, b: B, c: C) -> E
//    
//    func x(a: A) -> (b: B) -> (c: C) -> E
    
    struct User {
        func login(password: String) {}
    }
    
    let password = "Swift"
    
    let user = User()
    
    user.login(password)
    
    User.login(user)(password)
    
}

//class Wrapper<T>: NSObject {
//    let payload: T
//    let loaclization: (T) -> () -> String
//    
//    @objc func localizable() -> NSString {
//        return loaclization(payload)()
//    }
//    
//    static var selector: Selector {
//        return "localizable"
//    }
//}
//
//
//func curryInPractice() {
//    struct User {
//        func name() -> String { return "" }
//    }
//    
//    let collation: UILocalizedIndexedCollation
//    
//    var users: [User] = [User(), User()]
//    
////    let sorted = collation.sortedArrayFromArray(users, collationStringSelector: "name")
//    
//    let wrappers = users.map({ Wrapper(payload: $0, loaclization: User.name) })
//    
//    let sorted = collation.sortedArrayFromArray(wrappers, collationStringSelector: Wrapper<User>.selector)
//    
//}


// MARK: - Async callback

//              (value: T?, error: ErrorType?) -> Void
//            if let error = error {
//
//            } else if let value = value {
//
//            } else {
//                
//            }


enum Results<Value> {
    case Failure(ErrorType)
    case Success(Value)
    
    func flatMap<T>(@noescape transform: Value throws -> Results<T>) rethrows -> Results<T> {
        switch self {
        case let .Failure(error):
            return .Failure(error)
            
        case let .Success(value):
            return try transform(value)
        }
    }
    
    func map<T>(@noescape transform: Value throws -> T) rethrows -> Results<T> {
        return try flatMap { .Success( try transform($0) ) }
    }
}

//func toImage(data: NSData) -> Results<UIImage> {  }
//
//func addAlpha(image: UIImage) -> Results<UIImage> {  }
//
//func roundCorner(image: UIImage) -> Results<UIImage> {  }
//
//func test() {
//    let data = NSData()
//    toImage(data).flatMap(addAlpha).flatMap(roundCorner)
//}

//(result: Results<T>) -> Void
//
//switch result {
//case let .Error(error):
//    //
//case let .Success(value):
//    //
//}


