//
//  Currying.swift
//  CXSwifter
//
//  Created by Horex on 16/2/19.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

public func addTwoNumbers(a: Int)(num: Int) -> Int {
    return a + num
}

