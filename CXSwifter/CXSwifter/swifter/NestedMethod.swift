//
//  NestedMethod.swift
//  CXSwifter
//
//  Created by Horex on 16/2/25.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation


func appendQuery(  url: String,
                   key: String,
                 value: AnyObject) -> String {
                    
    if let dictionary = value as? [String: AnyObject] {
        return appendQueryDictionary(url, key, dictionary)
    } else if let array = value as? [AnyObject] {
        return appendQueryArray(url, key, array)
    } else {
        return appendQuerySingle(url, key, value)
    }
}


func appendQueryDictionary(url: String,
    _ key: String,
    _ value: [String: AnyObject]) -> String {
    return ""
}

func appendQueryArray( url: String,
    _ key: String, _
    value: [AnyObject]) -> String {
        //...
        return ""
}

func appendQuerySingle( url: String,
    _ key: String, _
    value: AnyObject) -> String {
        //...
        return ""
}


// MARK: - instand of 


func simappendQuery(  url: String,
    key: String,
    value: AnyObject) -> String {
        
        func simaappendQueryDictionary(url: String,
            _ key: String,
            _ value: [String: AnyObject]) -> String {
                return ""
        }
        
        func simaappendQueryArray( url: String,
            _ key: String, _
            value: [AnyObject]) -> String {
                //...
                return ""
        }
        
        func simaappendQuerySingle( url: String,
            _ key: String, _
            value: AnyObject) -> String {
                //...
                return ""
        }
        
        if let dictionary = value as? [String: AnyObject] {
            return simaappendQueryDictionary(url, key, dictionary)
        } else if let array = value as? [AnyObject] {
            return simaappendQueryArray(url, key, array)
        } else {
            return simaappendQuerySingle(url, key, value)
        }
}


