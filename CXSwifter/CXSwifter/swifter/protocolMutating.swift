//
//  protocolMutating.swift
//  CXSwifter
//
//  Created by Horex on 16/2/19.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation
import UIKit

protocol Vehicle
{
    var numberOfWheels: Int {get}
    var color: UIColor {get set}
    
    mutating func changeColor()
}

struct MyCar: Vehicle {
    var numberOfWheels = 4
    var color = UIColor.blueColor()
    mutating func changeColor() {
        color = UIColor.redColor()
        numberOfWheels = 5
    }
}