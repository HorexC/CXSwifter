//
//  objcToSwift.swift
//  CXSwifter
//
//  Created by Horex on 16/2/28.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation
import UIKit

// MARK: - demo1 MVVM

protocol RenderContext {
    func renderText(texts: String...)
    func renderImage(images: UIImage...)
}

protocol ViewModelType {
    func renderInContext(context: RenderContext)
}

extension UITableViewCell: RenderContext {
    func renderText(texts: String...) {
        self.textLabel?.text = texts.first
        self.detailTextLabel?.text = texts.last
    }
    func renderImage(images: UIImage...) {
        
    }
}

struct People: ViewModelType {
    
    let name: String
    let age: Int
    
    func renderInContext(context: RenderContext) {
//        context.renderImage(<#T##images: UIImage...##UIImage#>)
    }
    
}


// MARK: - demo2 Json

enum JSON {
    case JArray([JSON])
    case JObject([String: JSON])
    case JString(String)
    case JNumber(Double)
    case JBool(Bool)
    case JNull
    
    subscript(index: Int) -> JSON? {
        guard case .JArray(let array) = self else {
            return nil
        }
        return array[index]
    }
    
    subscript(key: String) -> JSON? {
        guard case .JObject(let dic) = self else {
            return nil
        }
        return dic[key]
    }
}


// MARE: - think functionally

enum Result<T> {
    case Success(T)
    case Failure(ErrorType)
}

struct Async<T> {
    let function: (Result<T> -> Void) -> Void
}

//extension Async {
//    func map<U>(f: T throws -> U) -> Async<U> {
//        return Async<U> {
//            cont in
//            self.function{ cont($0.map(f))}
//        }
//    }
//}

extension Result {
    func flatMap<U>(@noescape f: T throws -> Result<U>) -> Result<U> {
        switch self{
        case .Success(let v):
            do {
                return try f(v)
            } catch let e {
                return .Failure(e)
            }
        case .Failure(let e):
            return .Failure(e)
        }
    }
}

extension Result {
    func then<U>(@noescape f: T throws -> Result<U>) -> Result<U> {
        switch self{
        case .Success(let v):
            do {
                return try f(v)
            } catch let e {
                return .Failure(e)
            }
        case .Failure(let e):
            return .Failure(e)
        }
    }
}

class SomeAPI {
    class func fetchSomeAPI(result: String, success: String -> Void, failure: NSError -> Void) {
    
    }
}

class SomeOtherAPI {
    class func fetchSomeOtherAPI(result: String, success: String -> Void, failure: NSError -> Void) {
        
    }
}

class SomeThirdAPI {
    class func fetchSomeThirdAPI(result: String, success: String -> Void, failure: NSError -> Void) {
        
    }
}

func transformResult(result: String) -> String {
    return ""
}

func transformFinalResult(result: String) -> String {
    return ""
}


func doSomeAsyncOperation(params: String, success: String -> Void, failure: NSError -> Void) {
    SomeAPI.fetchSomeAPI(params,
        success: { result in
            SomeOtherAPI.fetchSomeOtherAPI(result,
                success: { someOtherResult -> Void in
                    let finallyTheParams = transformResult(result)
                    SomeThirdAPI.fetchSomeThirdAPI(finallyTheParams,
                        success: { finallyTheResult in
                            let finishResult = transformFinalResult(finallyTheParams)
                            success(finishResult)
                        },
                        failure: { someThirdError in
                            failure(someThirdError)
                        })
                    },
                failure: { someOtherError in
                    failure(someOtherError)
                })
            },
        failure: { error in
            failure(error)
        }
    )
}




//func doSomeAsyncOperation(params: String) -> Async<String> {
//    return fetchSomeAPI(params)
//        .then(fetchSomeOtherAPI)
//        .map(transformResult)
//        .then(fetchSomeThirdAPI)
//        .map(transformResult)
//}
