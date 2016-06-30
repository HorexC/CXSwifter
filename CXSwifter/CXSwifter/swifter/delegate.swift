//
//  delegate.swift
//  CXSwifter
//
//  Created by Horex on 16/6/14.
//  Copyright © 2016年 Horex. All rights reserved.
//

import UIKit

protocol MyClassDelegate: class{
    func method()
}

class MyTestDelegateClass {
    weak var delegate: MyClassDelegate?
}

class TestDelegateController: UIViewController, MyClassDelegate {
    var somInstance: MyTestDelegateClass!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        somInstance = MyTestDelegateClass()
        somInstance.delegate = self
    }
    
    func method() {
        
    }
}