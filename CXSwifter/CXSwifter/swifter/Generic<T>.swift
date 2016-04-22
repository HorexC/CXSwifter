//
//  Generic<T>.swift
//  CXSwifter
//
//  Created by Horex on 16/4/22.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation


extension Array {
    var random: Element? {
        return self.count != 0 ? self[Int(arc4random_uniform(UInt32(self.count)))] : nil
    }
    
    func appendRandomDescription<U: CustomStringConvertible>(input: U) -> String {
        if let element = self.random {
            return "\(element)" + input.description
        } else {
            return "empty array"
        }
    }
    
}

