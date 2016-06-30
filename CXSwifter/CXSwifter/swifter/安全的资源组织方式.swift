//
//  安全的资源组织方式.swift
//  CXSwifter
//
//  Created by Horex on 16/6/30.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation
import UIKit

/*
 
 iOS 开发中有很多使用字符串来指定某个资源的用法，比如通过项目中图片的名字来生成 UIImage 对象：
 
 let image = UIImage(name: "my_image")
 
 或者通过 segue 的标识符来调用一个 storyboard 中的 segue：
 
 performSegueWithIdentifier("my_segue", sender: self)

 */

enum ImageName: String {
    case MyImage = "my_image"
}

enum SegueName: String {
    case MySegue = "my_segue"
}

extension UIImage {
    convenience init!(imageName: ImageName) {
        self.init(named: imageName.rawValue)
    }
}

extension UIViewController {
    func performSegueWithSegueName(segueName: SegueName, sender: AnyObject!) {
        performSegueWithIdentifier(segueName.rawValue, sender: sender)
    }
}