//
//  ClosureDif.swift
//  CXSwifter
//
//  Created by Horex on 16/4/22.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

extension Int {
    func times(f: Int -> ()) {
        print("Int")
        for i in 1...self {
            f(i)
        }
    }
    func times(f: () -> ()) {
        print("Void")
        for _ in 1...self {
            f()
        }
    }
}

func testInt() {
    3.times { (i: Int) in
        print(i)
    }
    
    3.times { 
    }
    
}