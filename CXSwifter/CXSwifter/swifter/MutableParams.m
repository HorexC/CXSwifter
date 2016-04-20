//
//  MutableParams.m
//  CXSwifter
//
//  Created by Horex on 16/3/8.
//  Copyright © 2016年 Horex. All rights reserved.
//

#import "MutableParams.h"
#import "CXSwifter-Swift.h"

@implementation MutableParams

- (void)testSwift
{
    [[myswiftClass alloc] init];
}

//-(NSArray *)actionUsePic:(id)actionNum, ...
//{
//    NSMutableArray *argsArray = [[NSMutableArray alloc] init];
//    va_list params; //定义一个指向个数可变的参数列表指针;
//    va_start(params,actionNum);//va_start 得到第一个可变参数地址,
//    id arg;
//    if (actionNum) {
//        //将第一个参数添加到array
//        id prev = actionNum;
//        [argsArray addObject:prev];
//        //va_arg 指向下一个参数地址
//        //这里是问题的所在 网上的例子，没有保存第一个参数地址，后边循环，指针将不会在指向第一个参数
//        while( (arg = va_arg(params,id)) )
//        {
//            if ( arg ){
//                [argsArray addObject:arg];
//            }
//        }
//        //置空
//        va_end(params);
//        //这里循环 将看到所有参数  
//        for (NSNumber *num in argsArray) {  
//            NSLog(@"%d", [num intValue]);  
//        }  
//    }  
//    return argsArray;  
//}

+ (NSArray *)actionUsePic:(id)actionNum,...
{
    NSMutableArray *argsArray = [NSMutableArray array];
    va_list params; //定义一个指向个数可变的参数列表指针;
    
    va_start(params, actionNum);//va_start 得到第一个可变参数地址,
    id arg;
    if (actionNum) {
        //将第一个参数添加到array
        id prev = actionNum;
        [argsArray addObject:prev];
        //va_arg 指向下一个参数地址
        //这里是问题的所在 网上的例子，没有保存第一个参数地址，后边循环，指针将不会在指向第一个参数
        while ( (arg = va_arg(params, id)) ) {
            if (arg) {
                [argsArray addObject:arg];
            }
        }
        va_end(params);
        //这里循环 将看到所有参数
        for (NSNumber *num in argsArray) {
            NSLog(@"%d", [num intValue]);
        }
    }
    return argsArray;
}

@end
