//
//  dPrint.swift
//  CXSwifter
//
//  Created by Horex on 16/2/29.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

func dPrint(@autoclosure item: () -> Any) {
    #if DEBUG
    print(item())
    #endif
}

extension NSCache {
    subscript(key: AnyObject) -> AnyObject? {
        get {
            return objectForKey(key)
        }
        set {
            if let value: AnyObject = newValue {
                setObject(value, forKey: key)
            } else {
                removeObjectForKey(key)
            }
        }
    }
}