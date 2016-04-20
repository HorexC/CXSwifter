//
//  sync.m
//  CXSwifter
//
//  Created by Horex on 16/2/29.
//  Copyright © 2016年 Horex. All rights reserved.
//

#import "SyncOC.h"
#import "WebAPIOC.h"

@implementation SyncOC

+ (void)syncButtonTouched:(UIButton *)sender {
//    self.statusLabel.text = @"正在同步...";
    [WebAPIOC requestBuddyList:^(NSArray<NSObject *> *buddys, NSError *error) {
//        self.buddys = buddys;
        dispatch_async(dispatch_get_main_queue(), ^{
            //    self.statusLabel.text = @"正在同步群...";
            //    [self.tableView reloadData];

            [WebAPIOC requestGroupList:^(NSArray<NSObject *> *buddys, NSError *error) {
                
                dispatch_async(dispatch_get_main_queue(), ^{

                    //    [self.tableView reloadData];
                
                });
            }];
            
            
        });
    }];
}

@end
