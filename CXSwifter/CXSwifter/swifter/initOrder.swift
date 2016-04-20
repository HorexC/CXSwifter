//
//  initOrder.swift
//  CXSwifter
//
//  Created by Horex on 16/3/8.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation


class Cat {
    var name: String
    init() {
        name = "cat"
    }
}

//class Tiger: Cat {
//    let power: Int
//    override init() {
//        power = 10
//        super.init()
//        name = "tiger"
//    }
//}

class Tiger: Cat {
    let power: Int
    override init() {
        power = 10
//        super.init()
    }
}


class ClassA {
    let numA: Int
    required init(num: Int) {
        numA = num
    }
    convenience init(bigNum: Bool) {
        self.init(num: bigNum ? 10000 : 1)
    }
}

class ClassB: ClassA {
    let numB: Int
    required init(num: Int) {
        numB = num + 1
        super.init(num: num)
    }
}

extension Int {
    init?(fromString: String) {
        self = 0
        var digit = fromString.characters.count - 1
        for c in fromString.characters {
            var number = 0
            if let n = Int(String(c)) {
                number = n
            } else {
                switch c {
                    case "一": number = 1
                    case "二": number = 2
                    case "三": number = 3
                    case "四": number = 4
                    case "五": number = 5
                    case "六": number = 6
                    case "七": number = 7
                    case "八": number = 8
                    case "九": number = 9
                    case "零": number = 0
                    default: return nil
                }
            }
            
            self = self + number * Int(pow(10, Double(digit)))
            digit = digit - 1
        }
    }
}