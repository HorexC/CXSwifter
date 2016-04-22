//
//  swiftClassType.swift
//  CXSwifter
//
//  Created by Horex on 16/4/20.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation
import UIKit


func getClassType()  {
    let date = NSDate()
    let name: AnyClass! = object_getClass(date)
    print(name)
    
    let name2 = date.dynamicType
    print(name2)
    
    
    
}

class ClassType {
    
    class func methoded() {
        
    }
    
}

func testFunctionClass()  {
    class MusicViewController: UIViewController {
        
    }
    
    class AlbumViewController: UIViewController {
        
    }
    
    let usingVCTypes: [AnyClass] = [MusicViewController.self,
                                    AlbumViewController.self]
    let a = AlbumViewController()
    func setupViewControllers(vcTypes: [AnyClass]) {
        for vcType in vcTypes {
            if vcType is UIViewController.Type {
                let vc = (vcType as! UIViewController.Type).init()
                print(vc)
            }
            
        }
    }
    
    setupViewControllers(usingVCTypes)
}


protocol Copyable {
    func copy() -> Self
}

class MyClassC: Copyable {
//    func copy() -> Self {
//        let result = MyClassC()
//        return result
//    }
    
//    func copy() -> Self {
//        let result = self.dynamicType.init()
//        return result
//    }
    var num = 1
    
    func copy() -> Self {
        let result = self.dynamicType.init()
        result.num = num
        return result
    }
    
    required init() {
        
    }
}

class ClassAt { }
class ClassBt: ClassAt { }

func testClassAB() {
    let obj: AnyObject = ClassBt()
    if obj is ClassAt {
        
    }
}

//for (id object in [self.view subviews]) {
//    if ([object isKindOfClass:[UIView class]]) {
//        // 对 object 进行了判断，它一定是 UIView 或其子类
//        UIView * view = (UIView *)object;
//        // 对 view 进行操作
//        // 因为 view 一定是 UIView，所以绝对安全
//        view.backgroundColor = [UIColor redColor];
//    }
//}

//for object in self.view.subviews {
//    if object is UIView {
//        let view = object as! UIView
//        view.backgroundColor = UIColor.redColor()
//    }
//}

func testViews() {
    let superView = UIView()
    guard let subViews = superView.subviews as? [UIView] else {
        return
    }
    
    for view in subViews {
        
    }
    
}

