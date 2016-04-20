//
//  typealiasAndT.swift
//  CXSwifter
//
//  Created by Horex on 16/2/25.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation
import UIKit

func distanceBetweenPoint(point: CGPoint, toPoint: CGPoint) -> Double {
    let dx = Double(toPoint.x - point.x)
    let dy = Double(toPoint.y - point.y)
    return sqrt((dx * dx) + (dy * dy))
}

typealias Location = CGPoint
typealias Distance = Double

func distanceBetweenPointTyp(point: Location, toPoint: Location) -> Distance {
    let dx = Distance(toPoint.x - point.x)
    let dy = Distance(toPoint.y - point.y)
    return sqrt(dx * dx + dy * dy)
}
class Person22<T> {}


func sampleTest() {
    
//    typealias Worker = Person22
    
}

protocol GeneratorTy {
    typealias Element
    mutating func next() -> Self.Element
}

