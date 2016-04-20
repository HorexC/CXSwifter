//
//  improveOldCode.swift
//  CXSwifter
//
//  Created by Horex on 16/2/29.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation
import UIKit


class SyncSwift {
    
    var buddys: [AnyObject] = []
    
    var tableView: UITableView = UITableView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), style: UITableViewStyle.Grouped)
    
    var statusLabel: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    
    // MARK: - demo1
    
    func syncButtonTouched(sender: UIButton) {
        self.statusLabel.text = "同步好友..."
        WebAPIOC.requestBuddyList { (buddys, error) -> Void in
            self.statusLabel.text = "同步群..."
            self.buddys = buddys
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                            self.tableView.reloadData()
                WebAPIOC.requestGroupList({ (buddys, error) -> Void in
                    dispatch_async(dispatch_get_main_queue(), { () -> Void in
                                    self.tableView.reloadData()
                    })
                })
            })
        }
    }
    
    // MARK: - demo2
    
    func syncBuddys(completion: () -> Void) {
        WebAPIOC.requestBuddyList({ (buddys, error) -> Void in
            self.buddys.removeAll()
            self.buddys = buddys
            completion()
        })
    }
    
    func syncGroups(completion: () -> Void) {
        WebAPIOC.requestGroupList { (buddys, error) -> Void in
            self.buddys = buddys
            completion()
        }
    }
 
    
    func syncButtonTouched2(sender: UIButton) {
                self.statusLabel.text = "同步好友..."
        
        self.syncBuddys{
            
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                
                            self.tableView.reloadData()
                self.syncGroups{
                    
                    dispatch_async(dispatch_get_main_queue(), { () -> Void in
                                    self.tableView.reloadData()
                    })
                }
            })
        }
        
        WebAPIOC.requestBuddyList { (buddys, error) -> Void in
                    self.statusLabel.text = "同步群..."
            self.buddys = buddys
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                            self.tableView.reloadData()
                WebAPIOC.requestGroupList({ (buddys, error) -> Void in
                    dispatch_async(dispatch_get_main_queue(), { () -> Void in
                            self.tableView.reloadData()
                    })
                })
            })
        }
    }
    
    let switchToMainThread: AsyncTask = { (action) -> Void in
        dispatch_async(dispatch_get_main_queue(), action)
    }
    
    func testAsy() {
        let tast: Action = syncBuddys |> switchToMainThread |> {
            
            } |> syncGroups |> switchToMainThread |> {
                
        }
        tast()
    }

    func testAsy2() {
        let beginSyncBuddys: Action = switchToMainThread |> {
            print("")
        }
        
        let beginSynGroups: Action = switchToMainThread |> {
            print("")
        }
        
        let endSyn: Action = switchToMainThread |> {
            print("")
        }
        
        let tast: Action =  syncBuddys |> beginSyncBuddys |> syncGroups |> beginSynGroups |> endSyn
        
        tast()
    }
    
    func addTableViewSection<T: TableViewSectionDataSource where T: Synchronizable>(section: T, updatingTest: String){
        
    }
    
}

protocol Synchronizable {
    typealias Element
    
    var items: [Element] { get }
    
    func synchronize(completion: Action)
}

class Buddy {
    
}

class BuddyDataProvider: Synchronizable {
    
    typealias Element = Buddy
    
    private(set) var items = [Buddy]()
    
    func synchronize(completion: () -> Void) {
        WebAPIOC.requestBuddyList({ (buddys, error) -> Void in
            self.items.removeAll()
            completion()
        })
    }
}

protocol TableViewSectionDataSource {
    var sectionName: String { get }
    var rowCount: Int { get }
    subscript(i: Int) -> String { get }
}

extension BuddyDataProvider: TableViewSectionDataSource {
    var sectionName: String { return "friend" }
    var rowCount: Int { return self.items.count }
    subscript(i: Int) -> String { return String(self.items[i]) }
}

infix operator |> { associativity left precedence 140 }


typealias Action = () -> Void

typealias AsyncTask = (Action) -> Void

func |>(lhs: AsyncTask, rhs: Action) -> AsyncTask {
    return { (action) -> Void in
        lhs { rhs(); action() }
    }
}

func |>(lhs: AsyncTask, rhs: Action) -> Action {
    return {
        lhs { rhs() }
    }
}

func |>(lhs: AsyncTask, rhs: AsyncTask) -> AsyncTask {
    return { (action) -> Void in
        lhs{ rhs(action) }
    }
}










