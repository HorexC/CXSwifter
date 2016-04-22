//
//  Defined.swift
//  CXSwifter
//
//  Created by Horex on 16/4/22.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation
import UIKit

let IS_IOS7 = (UIDevice.currentDevice().systemVersion as NSString).doubleValue >= 7.0
let IS_IOS8 = (UIDevice.currentDevice().systemVersion as NSString).doubleValue >= 8.0

func fun_IS_IOS7() ->Bool { return (UIDevice.currentDevice().systemVersion as NSString).doubleValue >= 7.0 }
func fun_IS_IOS8() -> Bool { return (UIDevice.currentDevice().systemVersion as NSString).doubleValue >= 8.0 }

// RGBA(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]

 func RGBA (r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor { return UIColor (red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a) }