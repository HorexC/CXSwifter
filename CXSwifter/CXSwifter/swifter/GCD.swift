//
//  GCD.swift
//  CXSwifter
//
//  Created by Horex on 16/4/19.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

func testGCD() {
    let workingQueue = dispatch_queue_create("my_queue", nil)
    
    dispatch_async(workingQueue) { 
     
        print("working")
        
        NSThread.sleepForTimeInterval(2.0)
        
        dispatch_async(dispatch_get_main_queue(), { 
            print("reload data")
        })
        
    }
}

class Per123: NSObject {
    func testDelay() {
        NSObject().performSelector(#selector(Per123.delaymethod))
    }
    
    @objc func delaymethod() {
        
    }

    func testDelayGCD()  {
        
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(<#delayInSeconds#> * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//            <#code to be executed after a specified delay#>
//            });
        
        let time: NSTimeInterval = 2.0
        let delay = dispatch_time(DISPATCH_TIME_NOW, Int64(time * Double(NSEC_PER_SEC)))
        dispatch_after(delay, dispatch_get_main_queue()) { 
            
        }
    }
}

class GCDTask {
    typealias Task = (cancel: Bool) -> Void
    func delay(time: NSTimeInterval, task: () -> ()) -> Task? {
        
        func dispatch_later(block: () -> ()) {
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(time * Double(NSEC_PER_SEC))), dispatch_get_main_queue(), block)
        }
        
        var closure: dispatch_block_t? = task
        var result: Task?
        let delayedClosure: Task = {
            cancel in
            if let internalClosure = closure {
                if cancel == false {
                    dispatch_async(dispatch_get_main_queue(), internalClosure)
                }
            }
            closure = nil
            result = nil
        }
        
        result = delayedClosure
        
        dispatch_later { 
            if let delayedClosure = result {
                delayedClosure(cancel: false)
            }
        }
        
        return result
    }
    
    func cancel(task: Task?) {
        task?(cancel: true)
    }
    
    func testIt() {
        let task = delay(5) {
            print("123")
        }
        
        cancel(task)
        
    }
    
}











