//
//  Singleton.swift
//  CXSwifter
//
//  Created by Horex on 16/2/25.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

class MyManager {
    class var shareManager: MyManager {
        struct Static {
            static var onceToken: dispatch_once_t = 0
            static var staticInstance: MyManager? = nil
        }
        dispatch_once(&Static.onceToken) {
            Static.staticInstance = MyManager()
        }
        return Static.staticInstance!
    }
    
}


class MyManagerSuper {
    class var shareManager: MyManagerSuper {
        struct Static {
            static let sharedInstance: MyManagerSuper = MyManagerSuper()
        }
        return Static.sharedInstance
    }
}

private let shareInstance = MyManagerSimple()

class MyManagerSimple {
    class var shareManager: MyManagerSimple {
        return shareInstance
    }
}

class MyManagerFinally {
    static let shareManager = MyManagerFinally()
    private init() {}
}