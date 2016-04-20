//
//  main.swift
//  CXSwifter
//
//  Created by Horex on 16/3/8.
//  Copyright © 2016年 Horex. All rights reserved.
//

import UIKit

class MyApplication: UIApplication {
    override func sendEvent(event: UIEvent) {
        super.sendEvent(event)
        print("Event sent: \(event)")
    }
}

UIApplicationMain(Process.argc, Process.unsafeArgv, NSStringFromClass(MyApplication), NSStringFromClass(AppDelegate))
