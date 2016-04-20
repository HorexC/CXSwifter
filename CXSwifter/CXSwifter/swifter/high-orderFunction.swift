//
//  high-orderFunction.swift
//  CXSwifter
//
//  Created by Horex on 16/2/24.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation


func simpleTest() {
    let numbers = [1, 4, 2, 3]
    
    let res = numbers.sort{ $0 < $1 }
    
    print(res)
    
    let arr = [1, 2, 4]
    
    let brr = arr.map{ $0 * 2 }
    
    print(brr)
    
    let _ = [1, 2, 4]
    
    let _ = arr.reduce(0) { return $0 + $1 }
    
    let _ = [0, 1, 2, 3].reduce(0, combine: +)
    let _ = [0, 1, 2, 3].reduce(0, combine: *)
    let _ = [0, 1, 2, 3, 4].reduce([Int](), combine: { [$1] + $0})
    
    let acc = [1, 2, 4]
    
    acc.forEach { (var val : Int) -> () in
        val += 123
    }
    print(acc)
}

func doubleTest() {
    let _ = [1, 5, 2, 6].minElement()
    
    let _ = [1, 5, 2, 6].reduce(Int.max, combine: min)
    
    let _ = [1, 5, 2, 6].reduce([Int](), combine: {
        if $0.contains($1) {
            return $0
        } else {
            return $0 + [$1]
        }
    })
}

func groupby<T, H:Hashable>(items: [T], f: (T) -> H) -> [H: [T]] {
    return items.reduce([:], combine: { (var ac: [H: [T]], o: T) -> [H: [T]] in
        let h = f(o)
        if var c = ac[h] {
            c.append(o)
            ac.updateValue(c, forKey: h)
        } else {
            ac.updateValue([o], forKey: h)
        }
        return ac
    })
}

func interpose<T>(items: [T], element: T, count: Int = 1) -> [T] {
    typealias Acc = (ac: [T], cur: Int, cnt: Int)
    return items.reduce((ac: [], cur: 0, cnt: 1), combine: { (a: Acc, o: T) -> Acc in
        switch a {
        case let (ac, cur, _) where (cur+1) == items.count: return (ac + [o], 0, 0)
        case let (ac, cur, c) where c == count:
            return (ac + [o, element], cur + 1, 1)
        case let (ac, cur, c):
            return (ac + [o], cur + 1, c + 1)
        }
    }).ac
}

func interdig<T>(list1: [T], list2: [T]) -> [T] {
    return Zip2Sequence(list1, list2).reduce([], combine: {
        return $0 + [$1.0, $1.1]
    })
}

func chunl<T>(list: [T],length: Int) -> [[T]] {
    typealias Acc = (stack: [[T]],cur: [T], cnt: Int)
    let l = list.reduce((stack: [[T]()], cur: [T](), cnt: 1), combine: {
        if $0.cnt == length {
            return (stack: $0.stack + [$0.cur], cur: [$1], cnt: 1)
        } else {
            return (stack: $0.stack, cur: $0.cur + [$1], cnt: $0.cnt + 1)
        }
    })
    return l.stack + [l.cur]
}

func infoFromSate(state state: String, persons: [[String: AnyObject]]) -> Int {
    return persons.flatMap({ $0["city"]?.componentsSeparatedByString(", ").last }).filter( { $0 == state } ).count
}



//func cxMap(elements: [Int], transform: (Int) -> Int) -> [Int] {
//    return elements.reduce([Int](), combine: { (var acc: [Int], obj: Int) -> [Int] in
//        acc.append(transform(obj))
//        return acc
//    })
//}


func cxMap(elements: [Int], transform: (Int) -> Int) -> [Int] {
    return elements.reduce([Int](), combine: {
        return $0 + [transform($1)]
    })
}

func cxFlatMap(elements: [Int], transform: (Int) -> Int? ) -> [Int] {
    return elements.reduce([Int](), combine: {
        guard let m = transform($1) else {
            return $0
        }; return $0 + [m]
    })
}

func cxFilter(elements: [Int], filter:(Int) -> Bool) -> [Int] {
    return elements.reduce([Int](), combine: {
        guard filter($1) else { return $0 }
        return $0 + [$1]
    })
}

typealias Acc = (l: [Int],r: [Int])

//func partition(lst: [Int], criteria: (Int) -> Bool) -> Acc {
//    return lst.reduce((l: [Int](), r: [Int]()), combine: { (ac: Acc, objc: Int ) -> Acc in
//        if criteria(objc) {
//            return (l: ac.l + [objc], r: ac.r)
//        } else {
//            return (l: ac.l, r: ac.r + [objc])
//        }
//    })
//}

func partition(lst: [Int], criteria: (Int) -> Bool) -> Acc {
    return lst.reduce((l: [Int](), r: [Int]()), combine: {
        if criteria($1) {
            return (l: $0.l + [$1], r: $0.r)
        } else {
            return (l: $0.l, r: $0.r + [$1])
        }
    })
}

func infoFromState(state state: String, persons:[[String: AnyObject]]) -> (count:Int, age: Float){
    
    typealias Acc = (count: Int, age: Float)
    
    let u = persons.reduce((count: 0, age: 0.0), combine: {
        guard let personState = ($1["city"] as? String)?.componentsSeparatedByString(", ").last, personAge = $1["age"] as? Int where personState == state else {
            return $0
        }
        return (count: $0.count + 1, age: $0.age + Double(personAge))
    })
    return (age: Float(u.age) / Float(u.count), count: u.count)
}



// MARK: - class and func

class Clock2 {
    var count: Int = 0
    func getCount() -> Int {
        return ++count
    }
}

func getClock() -> () -> Int {
    var count: Int = 0
    let getCount = { () -> Int in
        ++count
    }
    return getCount
}


func reduceToMap() {
    let _ = [1, 3, 2].reduce([Int](), combine: { (arr: [Int], element: Int) -> [Int] in
        var t = Array(arr)
        t.append(element * 2)
        return t
    })
}


func plusAndMutiple() {
    let _ = [1, 3, 3].reduce((0, 1), combine: {
        if $1 % 2 == 0 {
            return ($0.0, $0.1 * $1)
        } else {
            return ($0.0 + $1, $0.1)
        }
    })
}

func fixArray() {
//    let _ = [1, 3, 4].filter({ $0 % 2 == 0 }).map({ $0 * $0 }).reduce(0){
//        return $0 + $1
//    }
}
