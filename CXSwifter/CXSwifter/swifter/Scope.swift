//
//  Scope.swift
//  CXSwifter
//
//  Created by Horex on 16/4/20.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation
import UIKit
/*
 -(void)loadView {
 UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
 
 UILabel *titleLabel = [[UILabel alloc]
 initWithFrame:CGRectMake(150, 30, 20, 40)];
 titleLabel.textColor = [UIColor redColor];
 titleLabel.text = @"Title";
 [view addSubview:titleLabel];
 
 UILabel *textLabel = [[UILabel alloc]
 initWithFrame:CGRectMake(150, 80, 20, 40)];
 textLabel.textColor = [UIColor redColor];
 textLabel.text = @"Text";
 [view addSubview:textLabel];
 
 self.view = view;
 }
 
 -(void)loadView {
 UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
 
 {
 UILabel *titleLabel = [[UILabel alloc]
 initWithFrame:CGRectMake(150, 30, 20, 40)];
 titleLabel.textColor = [UIColor redColor];
 titleLabel.text = @"Title";
 [view addSubview:titleLabel];
 }
 
 {
 UILabel *textLabel = [[UILabel alloc]
 initWithFrame:CGRectMake(150, 80, 20, 40)];
 textLabel.textColor = [UIColor redColor];
 textLabel.text = @"Text";
 [view addSubview:textLabel];
 }
 
 self.view = view;
 }

 */

func local(closure: ()->()) {
    closure()
}

func loadView() {
    let view = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    local { 
        let titleLabel = UILabel(frame: CGRectMake(150, 30, 20, 40))
        titleLabel.textColor = UIColor.redColor()
        titleLabel.text = "Title"
        view.addSubview(titleLabel)
    }
    do {
        let textLabel = UILabel(frame: CGRectMake(150, 80, 20, 40))
        //...
    }
    
    var titleLabel: AnyObject
    titleLabel = {
        let leb = UILabel()
        return leb
    }()
    
    (titleLabel as! UILabel).text = ""
}


/*
 UIView *view = ({
 UIView *v = [UIView new];
 v;
 });
 */

