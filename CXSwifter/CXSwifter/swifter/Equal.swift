//
//  Equal.swift
//  CXSwifter
//
//  Created by Horex on 16/4/21.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

func testEqual() {
    let str1 = "happy"
    let str2 = "happy"
    let str3 = "nice"
    
    str1 == str2
    str2 == str3
    
    let aclass = EqualClass(uuid: 12, title: "")
    let bclass = EqualClass(uuid: 12, title: "")
    aclass == bclass
    
}

class EqualClass {
    let uuid: Int
    var title: String
    init(uuid: Int, title: String) {
        self.uuid = uuid
        self.title = title
    }
}

extension EqualClass: Hashable {
    var hashValue: Int {
        return self.uuid
    }
}



func ==(lhs: EqualClass, rhs: EqualClass) -> Bool {
    return lhs.uuid == rhs.uuid
}