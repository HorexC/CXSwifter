//
//  regularExpression.swift
//  CXSwifter
//
//  Created by Horex on 16/3/8.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

struct RegexHelper {
    let regex: NSRegularExpression
    
    init (_ pattern: String) throws {
        try regex = NSRegularExpression(pattern: pattern, options: .CaseInsensitive)
    }
    
    func match(input: String) -> Bool {
        let match = regex.matchesInString(input, options: [], range: NSMakeRange(0, input.characters.count))
        return match.count > 0
    }
}

func testRegex() {
    let mailPattern = "^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$";
    let matcher: RegexHelper
    do {
        matcher = try RegexHelper(mailPattern)
    } catch _ {
        return
    }
    
    let maybeMailAddress = "horex@163.com"
    
    if matcher.match(maybeMailAddress) {
        print("value!")
    }
}


infix operator =~ { associativity none precedence 130 }

func =~(lhs: String, rhs: String) -> Bool {
    do {
        return try RegexHelper(rhs).match(lhs)
    } catch _ {
        return false
    }
}


func operatorTestA() {
    if "horex@163.com" =~ "^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$" {
        print("rigth!!!")
    }
}


func testCase() {
    let password = "akfuv(3"
    switch password {
        case "akfuv(3": print("pass")
        default:        print("false")
    }
    
    let num: Int? = nil
    
    switch num {
    case nil: print("null")
    default:  print("\(num!)")
    }
    
    let x = 0.5
    switch x {
    case -1.0 ... 1.0 : print("in")
    default:            print("out")
    }
    
    let contact = ("http://horex.com", "horex@163.com")
    
    var mailRegex: NSRegularExpression
    var siteRegex: NSRegularExpression
    
    mailRegex = (~/"^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$")!
    siteRegex = (~/"^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$")!
    
    switch contact {
    case (siteRegex, mailRegex): print("同时拥有有效的网站和邮箱")
    case (_, mailRegex): print("只拥有有效的邮箱")
    case (siteRegex, _): print("只拥有有效的网站")
    default: print("嘛都没有")
        }
    
}


prefix operator ~/ { }

prefix func ~/(pattern: String) -> NSRegularExpression? {
    return try? NSRegularExpression(pattern: pattern, options: .AllowCommentsAndWhitespace)
}

postfix operator ~~/ {}


postfix func ~~/(pattern: String) -> NSRegularExpression? {
    return try? NSRegularExpression(pattern: pattern, options: .AllowCommentsAndWhitespace)
}



