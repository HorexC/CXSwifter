//
//  subscript.swift
//  CXSwifter
//
//  Created by Horex on 16/2/23.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

class DailyMeal {
    enum MealTime {
        case Breakfast
        case Lunch
        case Dinner
    }
    
    var meals: [MealTime: String] = [:]
    
    subscript(requestedMeal: MealTime) -> String? {
        get {
            if let thisMeal = meals[requestedMeal] {
                return thisMeal
            } else {
                return nil
            }
        }
        set {
            meals[requestedMeal] = newValue
        }
    }
}




struct FactorialGenerator {
    subscript(n: Int) -> Int {
        var result = 1
        if n > 0 {
            for value in 1...n {
                result *= value
            }
        }
        return result
    }
}



