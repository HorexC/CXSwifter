//
//  Log.swift
//  CXSwifter
//
//  Created by Horex on 16/4/21.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation


/*
 
 #if DEBUG
 
 #define NSLog(format, ...) do {                                                                          \
 fprintf(stderr, "<%s : %d> %s\n",                                           \
 [[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String],  \
 __LINE__, __func__);                                                        \
 (NSLog)((format), ##__VA_ARGS__);                                           \
 fprintf(stderr, "-------\n");                                               \
 } while (0)
 
 #else
 
 #define NSLog(format, ...)
 
 #endif
 
 */

/*
 
 符号 	类型 	描述
 #file 	String 	包含这个符号的文件的路径
 #line 	Int 	符号出现处的行号
 #column 	Int 	符号出现处的列
 #function 	String 	包含这个符号的方法名字
 
 */

func printLog<T>(message: T,
              file: String = #file,
              method: String = #function,
              line: Int = #line) {
    #if DEBUG
    print("\((file as NSString).lastPathComponent)[\(line)], \(method): \(message)")
    #endif
}


