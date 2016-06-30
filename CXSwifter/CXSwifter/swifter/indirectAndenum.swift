//
//  indirect 和嵌套 enum.swift
//  CXSwifter
//
//  Created by Horex on 16/5/19.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation

class Node<T> {
    let value: T?
    let next: Node<T>?
    
    init(value: T?, next: Node<T>?) {
        self.value = value
        self.next = next
    }
}

func testNode() {

      let list =  Node(value: 1, next:
                    Node(value: 2, next:
                        Node(value: 3, next:
                            Node(value: 4, next: nil))))
    let linkedList = LinkedList.Node(1, .Node(2, .Node(3, .Node(4, .Empty))))
    
}

indirect enum LinkedList<Element: Comparable> {
    case Empty
    case Node(Element, LinkedList<Element>)
    
    func linedListByRemovingElement(element: Element) -> LinkedList<Element> {
        guard case let .Node(value, next) = self else {
            return .Empty
        }
        
        return value == element ? next : LinkedList.Node(value, next.linedListByRemovingElement(element))
    }
}
