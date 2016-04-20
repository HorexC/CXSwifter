//
//  weakAndUnowned.swift
//  CXSwifter
//
//  Created by Horex on 16/3/8.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

class AClass {
    var b: BClass
    init() {
        b = BClass()
        b.a = self
    }
    deinit {
        print("A deinit")
    }
}

class BClass {
    weak var a: AClass? = nil
}

class lazyPerson {
    let name: String
    lazy var printName: String = {
        return "123"
    }()
    
    lazy var printName2: ()->() = {
        [weak self] in
        if let strongSelf = self {
            print("The name is \(strongSelf.name)")
        }
    }
    
    init() {
        name = "123"
    }
    
    deinit {
        print("lazyPerson deinit")
    }
}

