//
//  protocolsAsTypes.swift
//  CXSwifter
//
//  Created by Horex on 16/2/26.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation
import UIKit


protocol WordType {
    var name: String { get }
    var pronunciation: String { get }
    var defintion: String { get }
}

struct KingsoftWord: WordType{
    
    var name: String = ""
    var pronunciation: String = ""
    var defintion: String = ""
}

struct YoudaoWord: WordType {
    
    var name: String = ""
    var pronunciation: String = ""
    var defintion: String = ""
}

struct BaiduWord: WordType {
    
    var name: String = ""
    var pronunciation: String = ""
    var defintion: String = ""
}



func renderWord(word: protocol<WordType>) {
    print(word.name)
    print(word.defintion)
    print(word.pronunciation)
}

func testRenderWord() {
    renderWord(KingsoftWord())
    renderWord(YoudaoWord())
    renderWord(BaiduWord())
}


struct MyPerson: ArrayLiteralConvertible {
    var name: String = ""
    var id: String = ""
    
    typealias Element = String
    init(arrayLiteral elements: Element...) {
        if elements.count == 2 {
            name = elements[0]
            id = elements[1]
        }
    }
}

extension MyPerson: Equatable {}

func == (p1: MyPerson, p2: MyPerson) -> Bool {
    return p1.id == p2.id
}

protocol WordTypeP: CustomStringConvertible {
    var name: String { get }
    var pronunciation: String { get }
    var definition: String { get }
}

protocol Speakable {
    func speak()
}

typealias SpeakableWordType = protocol<Speakable, WordTypeP>

struct BaiduWordP: WordTypeP {
    var name: String
    var pronunciation: String
    var definition: String
    var description: String {
        return "\(name), \(pronunciation), \(definition))"
    }
}

protocol Hello {
    func sayHello()
}

extension Hello {
    func sayHello() {
        print("Hello!")
    }
}

struct PersonH: Hello {
//    func sayHello() {
//        print("person hello!")
//    }
}


// MARK: - Demo

class CustomLoadingView: UIView {
    
}

// lowest!
//class BaseViewController: UIViewController {
//    var loadingView: CustomLoadingView!
//    
//    func setupLoadinView() {
//    
//    }
//    
//    func setLoadingViewHidden(hidden: Bool) {
//        loadingView?.hidden = hidden
//    }
//    
//    func onLoadingViewTapped() {
//        print("Reload page.")
//    }
//
//}

// mid
typealias ReloadHandler = (Void -> Void)

class LoadingPresenter {
    var loadingView: CustomLoadingView!
    var containerView: UIView!
    var reloadHandler: ReloadHandler?
    
    func setupLoadingView(container: UIView!, handler: ReloadHandler? = nil) {
        containerView = container
        reloadHandler = handler
    }
    
    func setLoadingViewHidden(hidden: Bool) {
        loadingView?.hidden = hidden
    }
    
    func onLoadingViewTapped() {
        reloadHandler?()
    }
}

class Demp1ViewController: UIViewController {
    var presenter = LoadingPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.setupLoadingView(self.view) {
            print("reload page")
        }
        
        presenter.setLoadingViewHidden(false)
    }
}

protocol LoadingPresenterP {
    var loadingView: CustomLoadingView! { set get }
    func setupLoadingView()
    func setLoadingViewHidden(hidden: Bool)
    func onLoadingViewTapped()
}

// finally
extension LoadingPresenterP where Self: UIViewController {
    func setupLoadingView() {
    
    }
    
    func setLoadingViewHidden(hidden: Bool) {
        loadingView?.hidden = hidden
    }
    
    func onLoadingViewTapped() {
        
    }
}

class finalIMViewController: UIViewController, LoadingPresenterP {
    var loadingView: CustomLoadingView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLoadingView()
        
        setLoadingViewHidden(false)
    }
}


// MARK: - DEMO2

protocol TitlePresentable {
    var title: String { get }
    var titleColor: UIColor { get }
    var titleFont: UIFont! { get }
    func updateTitleLabel(label: UILabel)
}

extension TitlePresentable {
    var titleColor: UIColor {
        return UIColor.blackColor()
    }
    
    var titleFont: UIFont! {
        return UIFont(name: "Helvetica", size: 18)!
    }
    
    func updateTitleLabel(label: UILabel) {
        label.text = title
        label.textColor = titleColor
        label.font = titleFont
    }
}

protocol ThumbnailPresentable {
    var thumbnailUrl: String { get }
    var thumbnailHandler: (Void -> Void)? { get }
    func updateImageView(imageView: UIImageView)
}

extension ThumbnailPresentable {
    var thumbnailHandler: (Void -> Void)? {
        return nil
    }
    func updateImageView(imageView: UIImageView) {
        
    }
    
    func thumbnailImageViewTapped() {
        thumbnailHandler?()
    }
}

protocol TimePresentabel {
    var timeText: String { get }
    var timeColor: UIColor { get }
    var timeFont: UIFont! { get }
    func updateTimeLabel(label: UILabel)
}

extension TimePresentabel {
    var timeText: String {
        return ""
    }
    var timeColor: UIColor {
        return UIColor.blackColor()
    }
    var timeFont: UIFont! {
        return UIFont(name: "Helvetica", size: 18)!
    }
    func updateTimeLabel(label: UILabel) {
        label.text = timeText
        label.font = timeFont
        label.textColor = timeColor
    }

}

typealias NewsPresentable = protocol<TitlePresentable, ThumbnailPresentable, TimePresentabel>

struct News {
    let text: String
    let thumbnailUrl: String
    let time: String
}

struct NewsViewModel: NewsPresentable {
    var title: String
    var thumbnailUrl: String
    var time: String
    var thumbnailHandler: (Void -> Void)?
    
    init(news: News, thumbnailHandler: (Void -> Void)?) {
        self.title = news.text
        self.thumbnailUrl = news.thumbnailUrl
        self.time = news.time
        self.thumbnailHandler = thumbnailHandler
    }
}

class NewCell: UITableViewCell {
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var headView: UIImageView!
    @IBOutlet private weak var timeLabel: UILabel!
    func updateWithPresenter(presenter: NewsPresentable) {
        presenter.updateImageView(headView)
        presenter.updateTitleLabel(titleLabel)
        presenter.updateTimeLabel(timeLabel)
    }
}


class NewsController: UITableViewController {
    var newsList: [News] = []
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("NewsCell", forIndexPath: indexPath) as! NewCell
        
        let news = newsList[indexPath.row]
        
        let viewModel = NewsViewModel(news: news) {
            print("image tapped")
        }
        
        cell.updateWithPresenter(viewModel)
        
        return cell
        
    }
}
