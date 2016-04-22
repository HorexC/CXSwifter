//
//  Math.swift
//  CXSwifter
//
//  Created by Horex on 16/4/21.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

func circlePerimeter(radius: Double) -> Double {
    return 2 * M_PI * radius
}

func yPosition(dy: Double, angle: Double) -> Double {
    return dy * tan(angle)
}

func testInfinity() {
    1.797693134862315e+308 < Double.infinity  // true
    1.797693134862316e+308 < Double.infinity  // false
}