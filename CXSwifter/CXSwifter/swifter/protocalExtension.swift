//
//  protocalExtension.swift
//  CXSwifter
//
//  Created by Horex on 16/5/19.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

protocol MyExtensionProtocol {
    func method()
}

extension MyExtensionProtocol {
    func method()  {
        print("default method")
    }
}

