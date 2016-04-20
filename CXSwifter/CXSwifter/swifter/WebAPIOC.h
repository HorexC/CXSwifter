//
//  WebAPIOC.h
//  CXSwifter
//
//  Created by Horex on 16/2/29.
//  Copyright © 2016年 Horex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WebAPIOC : NSObject

+ (void)requestBuddyList:(void (^)(NSArray<NSObject *> *buddys, NSError *error))synBlock;

+ (void)requestGroupList:(void(^)(NSArray<NSObject *> *buddys, NSError *error))synBlock;

@end
