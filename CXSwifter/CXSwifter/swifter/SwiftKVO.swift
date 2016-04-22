//
//  SwiftKVo.swift
//  CXSwifter
//
//  Created by Horex on 16/4/20.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

class MyKVOClass: NSObject {
    dynamic var date = NSDate()
}

class ClassTest: NSObject {
    var myObc: MyKVOClass!
    override init() {
        super.init()
        myObc = MyKVOClass()
        myObc.addObserver(self, forKeyPath: "date", options: .New, context: nil)
        
    }
    override func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>) {
        
    }
    
}

class MyClass123: NSObject {
    var date = NSDate()
}

class MyChildClass: MyClass123 {
    dynamic override var date: NSDate {
        get { return super.date }
        set { super.date = newValue }
    }
}
