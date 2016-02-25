//
//  tuple.swift
//  CXSwifter
//
//  Created by Horex on 16/2/23.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

import UIKit

func swapMe<T>(inout a: T, inout b: T) {
    let temp = a
    a = b
    b = temp
}

func swapMeTuple<T>(inout a: T, inout b: T) {
    (a, b) = (b, a)
}

extension CGRect {
    func myDivide(atDistance: CGFloat, fromEdge: CGRectEdge) -> (slice: CGRect, remaind: CGRect) {
        var x: CGFloat = 0.0
        var y: CGFloat = 0.0
        switch fromEdge {
        case .MaxXEdge:
            x = atDistance
        case .MaxYEdge:
            y = atDistance
        case .MinXEdge:
            x = 0
        case .MinYEdge:
            y = 0
        }
        
        return (CGRect(x: x, y: y, width: self.width - x, height: self.height - y), CGRect(x: 0, y: 0, width: self.width - x, height: self.height - y))
    }
}
