//
//  PropertyObservers.swift
//  CXSwifter
//
//  Created by Horex on 16/4/20.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

class MyPropertyClass {
    var date: NSDate {
        willSet {
            print("\(newValue)")
        }
        didSet {
            print("\(oldValue)")
        }
    }
    init () {
        date = NSDate()
    }
}

class superPro {
    var number: Int {
        get {
            return 1
        }
        set {
            print("")
        }
    }
    var string: String {
        return "123"
    }
    lazy var str2: String = {
        return ""
    }()
}

class suberPro: superPro {
     override var number: Int {
        willSet {
        }
        didSet {
        }
    }
}

func testPro() {
    let superP = superPro()
//    superP.string = ""
    
}
