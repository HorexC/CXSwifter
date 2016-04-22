//
//  PrintAndDebugPrint.swift
//  CXSwifter
//
//  Created by Horex on 16/4/21.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

class MyPrintClass {
    var num: Int
    init () {
        num = 1
    }
}

struct MyPrintStruct {
    var date: NSDate
    var place: String
    var attendeeName: String
}

extension MyPrintClass: CustomStringConvertible  {
    var description: String {
        return "\( self.num)"
    }
}

extension MyPrintStruct: CustomStringConvertible {
    var description: String {
        return "于 \(self.date) 在 \(self.place) 与 \(self.attendeeName) 进行会议"
    }
}

extension MyPrintStruct: CustomDebugStringConvertible {
    var debugDescription: String {
        return "我在 \(self.date) 在 \(self.place) 与 \(self.attendeeName) 进行会议"
    }
}

func testPrint() {
    let obj = MyPrintClass()
    print(obj)
    
    let meeting = MyPrintStruct(date: NSDate(), place: "", attendeeName: "")
    
    print(meeting)
    
}