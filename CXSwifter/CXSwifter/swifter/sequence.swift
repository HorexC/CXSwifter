//
//  sequence.swift
//  CXSwifter
//
//  Created by Horex on 16/2/23.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

class ReverseGenerator: GeneratorType {
    typealias Element = Int
    
    var counter: Element
    init<T>(array: [T]) {
        counter = array.count - 1
    }
    
    init(start: Int) {
        counter = start
    }
    
    func next() -> Element? {
        if counter < 0 {
            return nil
        } else{
            let index = counter
            counter -= 1
            return index
        }
    }
}

struct ReverseSequence<T>: SequenceType {
    var array: [T]
    init (array: [T]) {
        self.array = array
    }
    
    typealias Generator = ReverseGenerator
    
    func generate() -> Generator {
        return ReverseGenerator(array: array)
    }
}


