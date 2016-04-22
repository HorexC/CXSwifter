//
//  Options.swift
//  CXSwifter
//
//  Created by Horex on 16/4/21.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation
import UIKit

//typedef NS_ENUM(NSInteger, UICollectionViewScrollDirection) {
//    UICollectionViewScrollDirectionVertical,
//    UICollectionViewScrollDirectionHorizontal
//};


enum UICollectionViewScrollDirection: Int {
    case Vertical
    case Horizontal
}

/*
 typedef NS_OPTIONS(NSUInteger, UICollectionViewScrollPosition) {
 UICollectionViewScrollPositionNone                 = 0,
 // The vertical positions are mutually exclusive to each other, but are bitwise or-able with the horizontal scroll positions.
 // Combining positions from the same grouping (horizontal or vertical) will result in an NSInvalidArgumentException.
 UICollectionViewScrollPositionTop                  = 1 << 0,
 UICollectionViewScrollPositionCenteredVertically   = 1 << 1,
 UICollectionViewScrollPositionBottom               = 1 << 2,
 // Likewise, the horizontal positions are mutually exclusive to each other.
 UICollectionViewScrollPositionLeft                 = 1 << 3,
 UICollectionViewScrollPositionCenteredHorizontally = 1 << 4,
 UICollectionViewScrollPositionRight                = 1 << 5
 };
 */

struct UICollectionViewScrollPosition: OptionSetType {
    let rawValue: UInt
    static let None = UICollectionViewScrollPosition(rawValue: 0)
    static let Top = UICollectionViewScrollPosition(rawValue: 1)
    static let Bottom = UICollectionViewScrollPosition(rawValue: 1 << 1)
    static let Left = UICollectionViewScrollPosition(rawValue: 1 << 2)
    static let Right = UICollectionViewScrollPosition(rawValue: 1 << 3)
}

