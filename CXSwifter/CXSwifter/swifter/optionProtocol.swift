//
//  optionProtocol.swift
//  CXSwifter
//
//  Created by Horex on 16/3/8.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation


// MARK: - before swift 1.2

@objc protocol OptionProtocol {
    optional func optionalFunc()
    func requiredFunc()
}


class optionClass: OptionProtocol {
    @objc func requiredFunc() {
        
    }
    
}


//struct optionStruct: OptionProtocol {
//    func requiredFunc() {
//        
//    }
//}


// MAEK: - after swift 1.2

protocol OptionProtocolS {
    func optionalFunc()
    func requiredFunc()
}
extension OptionProtocolS {
    func optionalFunc() {
        
    }
}

class optionClassS: OptionProtocolS {
    func requiredFunc() {
        
    }
}

struct optionStructS: OptionProtocolS {
    func requiredFunc() {
        
    }
}

