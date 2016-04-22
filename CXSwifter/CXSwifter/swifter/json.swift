//
//  json.swift
//  CXSwifter
//
//  Created by Horex on 16/4/21.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation


// jsonString
//{"menu": {
//    "id": "file",
//    "value": "File",
//    "popup": {
//        "menuitem": [
//        {"value": "New", "onclick": "CreateNewDoc()"},
//        {"value": "Open", "onclick": "OpenDoc()"},
//        {"value": "Close", "onclick": "CloseDoc()"}
//        ]
//    }
//}}


//let jsonString = //...
//
//let json: AnyObject = try! NSJSONSerialization.JSONObjectWithData(
//    jsonString.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: true)!,
//    options: [])

//if let jsonDic = json as? NSDictionary {
//    if let menu = jsonDic["menu"] as? [String: AnyObject] {
//        if let popup: AnyObject = menu["popup"] {
//            if let popupDic = popup as? [String: AnyObject] {
//                if let menuItems: AnyObject = popupDic["menuitem"] {
//                    if let menuItemsArr = menuItems as? [AnyObject] {
//                        if let item0 = menuItemsArr[0]
//                            as? [String: AnyObject] {
//                            if let value: AnyObject = item0["value"] {
//                                print(value)
//                            }
//                        }
//                    }
//                }
//            }
//        }
//    }
//}
//
//
//if let jsonDic = json as? NSDictionary,
//    menu = jsonDic["menu"] as? [String: AnyObject],
//    popup = menu["popup"],
//    popupDic = popup as? [String: AnyObject],
//    menuItems = popupDic["menuitem"],
//    menuItemsArr = menuItems as? [AnyObject],
//    item0 = menuItemsArr[0] as? [String: AnyObject],
//    value = item0["value"]
//{
//    print(value)
//}
