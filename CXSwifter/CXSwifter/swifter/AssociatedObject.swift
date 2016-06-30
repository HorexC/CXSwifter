//
//  AssociatedObject.swift
//  CXSwifter
//
//  Created by Horex on 16/5/19.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

class AssocaitedClass {
    
}

private var key: Void?

extension AssocaitedClass {
    var title: String? {
        get {
            return objc_getAssociatedObject(self, &key) as? String
        }
        set(newValue){
            objc_setAssociatedObject(self, &key, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}

func printTitle(input: AssocaitedClass) {
    guard let title = input.title else {
        print("None")
        return
    }
    
    print("Title is \(title)")
}