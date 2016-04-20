//
//  UnsafePoint.swift
//  CXSwifter
//
//  Created by Horex on 16/4/19.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

//void method(const int *num) {
//    printf("%d", *num);
//}

//int a = 123;
//method(&a);

//C API             Swift API
//const Type *      UnsafePointer
//Type *            UnsafeMutablePointer

func method(num: UnsafePointer<CInt>) {
    print(num.memory)
}

//var a: CInt = 123
//method(&a)

//func CFArrayGetValueAtIndex(theArray: CFArray!, idx: CFIndex) -> UnsafePointer<Void> {
//    
//}

func CFArrayGetValueAtIndex() {
    let arr = NSArray(object: "noe")
    let str = unsafeBitCast(CFArrayGetValueAtIndex(arr, 0), CFString.self)
}

//memoryControl

class MyPointClass {
    var a = 1
    deinit {
        print("deinit")
    }
}

func testPoint() {
    
    var pointer: UnsafeMutablePointer<MyPointClass>!
    pointer = UnsafeMutablePointer<MyPointClass>.alloc(1)
    pointer.initialize(MyPointClass())
    print(pointer.memory.a)
    pointer = nil
    
    
    
    
}

func testMemoryPoint() {
    
    var pointer: UnsafeMutablePointer<MyPointClass>!
    pointer = UnsafeMutablePointer<MyPointClass>.alloc(1)
    pointer.initialize(MyPointClass())
    print(pointer.memory.a)
    pointer.destroy()
    pointer.dealloc(1)
    pointer = nil
    
//    malloc(<#T##Int#>)
//    
//    free(<#T##UnsafeMutablePointer<Void>#>)
    
}

//int cFuntion(int (callback)(int x, int y)) {
//    return callback(1, 2);
//}


func testCOpaquePointer() {
    let callBack:@convention(c) (Int32, Int32) -> Int32 = {
        (x, y) -> Int32 in
        return x + y
    }
    
//    let result = cFunction{
//            (x, y) -> Int32 in
//        return x + y
//    }
}



