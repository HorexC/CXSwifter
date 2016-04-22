//
//  Mirror.swift
//  CXSwifter
//
//  Created by Horex on 16/4/21.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

struct MirrorPerson {
    let name: String
    let age: Int
}
func testMirror()  {
    let xiaoMing = MirrorPerson(name: "XiaoMing", age: 16)
    let r = Mirror(reflecting: xiaoMing) // r 是 MirrorType
    
    print("xiaoMing 是 \(r.displayStyle!)")
    
    print("属性个数:\(r.children.count)")
    for i in r.children.startIndex..<r.children.endIndex {
        print("属性名:\(r.children[i].0!)，值:\(r.children[i].1)")
    }
}

func valueFrom(object: Any, key: String) -> Any? {
    let mirror = Mirror(reflecting: object)
    for i in mirror.children.startIndex ..< mirror.children.endIndex {
        let (targetKey, targetMirror) = mirror.children[i]
        if key == targetKey {
            return targetMirror
        }
    }
    return nil
}


