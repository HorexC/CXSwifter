//
//  ...and..<.swift
//  CXSwifter
//
//  Created by Horex on 16/4/20.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

///// Forms a closed range that contains both `minimum` and `maximum`.
//func ...<Pos : ForwardIndexType>(minimum: Pos, maximum: Pos)
//    -> Range<Pos>
//
///// Forms a closed range that contains both `start` and `end`.
///// Requres: `start <= end`
//func ...<Pos : ForwardIndexType where Pos : Comparable>(start: Pos, end: Pos)
//    -> Range<Pos>
//
//
///// Forms a half-open range that contains `minimum`, but not
///// `maximum`.
//func ..<<Pos : ForwardIndexType>(minimum: Pos, maximum: Pos)
//    -> Range<Pos>
//
///// Forms a half-open range that contains `start`, but not
///// `end`.  Requires: `start <= end`
//func ..<<Pos : ForwardIndexType where Pos : Comparable>(start: Pos, end: Pos)
//    -> Range<Pos>
//
//
///// Returns a closed interval from `start` through `end`
//func ...<T : Comparable>(start: T, end: T) -> ClosedInterval<T>
//
///// Returns a half-open interval from `start` to `end`
//func ..<<T : Comparable>(start: T, end: T) -> HalfOpenInterval<T>


func testIt123() {
    let test = "hellWWWo"
    let interval = "a"..."z"
    for c in test.characters {
        if interval.contains(String(c) ) {
            print(c)
        }
    }
}