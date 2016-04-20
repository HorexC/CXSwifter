//
//  ViewController.swift
//  CXSwifter
//
//  Created by Horex on 16/2/19.
//  Copyright © 2016年 Horex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var button: UIButton = {
        var but = UIButton(type: .Custom)
        return but
    }()
    
    func callMe(exteral not: UIButton) {
        print("callMe")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.button.frame = CGRectMake(0, 0, 100, 100)
        self.view.addSubview(self.button)
        self.button.backgroundColor = UIColor.blackColor()
        self.button.addTarget(self, action: "callMeWithExteral:", forControlEvents: .TouchUpInside)
        let arr = [0,2,4,6,8]
        
        for i in ReverseSequence(array: arr) {
            print("Index \(i) is \(arr[i])")
        }
        
        
        diffFormAnyAndAnyObject()
        
        
        var a = AClass()
        
        lazyPerson().printName2()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

