//
//  protocolCounple.swift
//  CXSwifter
//
//  Created by Horex on 16/3/8.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

protocol KittenLike {
    func meow() -> String
}

protocol DogLike {
    func bark() -> String
}

protocol TigerLike {
    func aou() -> String
}

class MysteryAnimal: KittenLike, DogLike, TigerLike {
    func meow() -> String {
        return "meow"
    }
    
    func bark() -> String {
        return "bark"
    }
    
    func aou() -> String {
        return "aou"
    }
}

typealias PetLike = protocol<KittenLike, DogLike>

struct SoundChecker: PetLike {
    func meow() -> String {
        return "meow"
    }
    
    func bark() -> String {
        return "bark"
    }
}

protocol A {
    func bar() -> Int
}

protocol B {
    func bar() -> String
}


class ClassAB: A, B {
    func bar() -> Int {
        return 1
    }
    func bar() -> String {
        return "123"
    }
}


func tstBar() {
    let instance = ClassAB()
    
    let _ = (instance as A).bar()
    
}

