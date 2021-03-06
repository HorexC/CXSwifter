//
//  operator.swift
//  CXSwifter
//
//  Created by Horex on 16/2/23.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation


struct Vector2D {
    var x = 0.0
    var y = 0.0
}

func +(left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x + right.x, y: left.y + right.y)
}

infix operator +* {
    associativity none
    precedence 160
}

func +*(left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x * right.x, y: left.y * right.y)
}