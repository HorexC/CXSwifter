//
//  define.swift
//  CXSwifter
//
//  Created by Horex on 16/3/8.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation
import UIKit

#if os(OSX)
    typealias Color = NSColor
#else
    typealias Color = UIColor
#endif

// MARK: - mark

// TODO: - todo

// FIXME:  - fixme


func someButtonPressed(sender: AnyObject?) {
    
    /*
    在这里我们用 FREE_VERSION 这个编译符号来代表免费版本。为了使之有效，我们需要在项目的编译选项中进行设置，在项目的 Build Settings 中，找到 Swift Compiler - Custom Flags，并在其中的 Other Swift Flags 加上 -D FREE_VERSION 就可以了。
    */
    #if FREE_VERSION
    
        print("has")
        
    #else
        
        print("not")
    
    #endif
    
    
    
}