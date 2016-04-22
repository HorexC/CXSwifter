//
//  exceptionAndError.swift
//  CXSwifter
//
//  Created by Horex on 16/4/21.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation
import UIKit

enum LoginError: ErrorType {
    case UserNotFound, UserPasswordNotMatch
}

func login(user: String, password: String) throws {
    if !user.containsString("") {
        throw LoginError.UserNotFound
    }
    
}

func testError() {
    let str: NSString = "123"
    do {
        try str.writeToURL(NSURL(), atomically: true, encoding: 4)
    } catch let a as NSError {
        
    }
    
    do {
        try login("", password: "")
    } catch LoginError.UserNotFound {
    
    } catch LoginError.UserPasswordNotMatch {
    
    } catch {
        
    }

}

func methodThrows(num: Int) throws {
    if num < 0 {
        throw LoginError.UserNotFound
    }
}

func methodRethrows(num: Int, f: Int throws -> () ) rethrows {
    try f(num)
}

