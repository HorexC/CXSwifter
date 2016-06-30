//
//  Lock.swift
//  CXSwifter
//
//  Created by Horex on 16/6/14.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation


/*
- (void)myMethod:(id)anObj {
    @synchronized(anObj) {
        // 在括号内 anObj 不会被其他线程改变
    }
}
*/

func myLockMethod(anObj: AnyObject!) {
    objc_sync_enter(anObj)
    
    objc_sync_exit(anObj)
}

func synchronized(lock: AnyObject, closure: () -> ()) {
    objc_sync_enter(lock)
    closure()
    objc_sync_exit(lock)
}

func myMethodLocked(anObj: AnyObject! ) {
    synchronized(anObj) { 
        
    }
}