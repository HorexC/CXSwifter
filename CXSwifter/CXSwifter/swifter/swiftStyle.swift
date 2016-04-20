//
//  swiftStyle.swift
//  CXSwifter
//
//  Created by Horex on 16/3/1.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation


// concise
func changeS() {
//    [self beginTaskWithName: @"MyTask"
//    completion:^ {
//        NSLog(@"The task is complete");
//    }];
    
//    self.beginTaskWithName("MyTask",
//        completion:{
//            print("The task is complete")
//    })

//    beginTaskWithName("MyTask",
//        completion:{
//            print("The task is complete")
//    })
    
//    beginTaskWithName("MyTask") {
//            print("The task is complete")
//    }

}

// concurrency

func enumS() {

//    typedef NS_ENUM(NSInteger, TransportMode) {
//        TransportModeAirplane,
//        TransportModeBoat,
//        TransportModeTruck
//    }

//    enum TransportMode {
//        case Airplane
//        case Boat
//        case Truck

//    func emojiForTransportMode(mode: TransportMode) -> String {
//    switch mode {
//        case .Airplane: return "✈️"
//        case .Boat:     return "🚢"
//        case .Truck:    return "🚗"
//        }
//    }

//    var emojiForTransportMode -> String {
//    switch self {
//        case .Airplane: return "✈️"
//        case .Boat:     return "🚢"
//        case .Truck:    return "🚗"
//        }
//    }

//    }

//    enum TransportMode: String{
//        case Airplane = "✈️"
//        case Boat = "🚢"
//        case Truck = "🚗"
    
}


struct Sentence {
    
    let  sentence: String
    
    init( _ sentence: String) {
        self.sentence = sentence
    }
    
}

extension Sentence: Equatable {}

func ==(lhs: Sentence, rhs: Sentence) -> Bool {
    return lhs.sentence == rhs.sentence
}

extension Sentence: Comparable {
    
}
func <(lhs: Sentence, rhs: Sentence) -> Bool {
    return lhs.sentence < rhs.sentence
}

extension Sentence: CustomStringConvertible {
    var description: String {
        return sentence
    }
}

extension Sentence: StringLiteralConvertible {
    
    init(name value: String) {
        self.sentence = value
    }
    
    init(stringLiteral value: String) {
        self.init(name: value)
    }
    
    init(extendedGraphemeClusterLiteral value: String) {
        self.init(name: value)
    }
    
     init(unicodeScalarLiteral value: String) {
        self.init(name: value)
    }
}

extension Sentence: Hashable {
    var hashValue: Int {
        return self.sentence.hashValue
    }
}

struct SentenceGenerator: GeneratorType {
    let words: [String]
    private var index = 0
    
    init (words: [String]) {
        self.words = words
    }
    
    mutating func next() -> String? {
        if index < words.count {
            let thisIndex = index
            index += 1
            return words[thisIndex]
        } else {
            return nil
        }
    }
}

extension Sentence: SequenceType {
    func generate() -> SentenceGenerator {
        let words = sentence.componentsSeparatedByString(" ")
        return SentenceGenerator(words: words)
    }

}

func testSentence() {
    let sent = Sentence("sen")
    let sent2: Sentence = "sen"
    var dict = [Sentence:String]()
    dict[sent2] = "123"
    
    for word in sent {
        print("word: \(word)")
    }
}


func decode() {

    // style1
    
//    if let x = input.next() {
//        if__fastPath((x >> 11) != 0b1101_1) {
//            return .Result(x)
//        } else {
//            return .Error
//        }
//    }
//    
//    return .EmptyInput
    
    // style2
    
//    guard let x = input.next() else {
//        return .EmptyInput
//    }
//    
//        if__fastPath((x >> 11) != 0b1101_1) {
//            return .Result(x)
//        } else {
//            return .Error
//        }
}

func percondition() {
    precondition(false, "stop!")
    fatalError()
}






