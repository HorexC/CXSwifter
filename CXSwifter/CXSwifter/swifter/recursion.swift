//
//  recursion.swift
//  CXSwifter
//
//  Created by Horex on 16/4/22.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

func reSum(n: UInt) -> UInt{
    if n == 0 {
        return 0
    }
    return n + reSum(n - 1)
}

func tailSum(n: UInt) -> UInt {
    func sumInteranl(n: UInt, current: UInt) -> UInt {
        if n == 0 {
            return current
        } else {
            return sumInteranl(n - 1, current: current + n)
        }
    }
    return sumInteranl(n, current: 0)
}