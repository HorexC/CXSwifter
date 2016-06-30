//
//  Toll-Free Bridging 和 Unmanaged.swift
//  CXSwifter
//
//  Created by Horex on 16/6/30.
//  Copyright © 2016年 Horex. All rights reserved.
//

import Foundation
import AudioToolbox

func audioToolBox() {
    let fileURL = NSURL(string: "SomeURL")
    var theSoundID: SystemSoundID = 0
    AudioServicesCreateSystemSoundID(fileURL!, &theSoundID)
    
}
//细心的读者可能会发现在 Objective-C 中类型的名字是 CFURLRef，而到了 Swift 里成了 CFURL。CFURLRef 在 Swift 中是被 typealias 到 CFURL 上的，其实不仅是 URL，其他的各类 CF 类型都进行了类似的处理。这主要是为了减少 API 的迷惑：现在这些 CF 类型的行为更接近于 ARC 管理下的对象，因此去掉 Ref 更能表现出这一特性。
//
//另外在 Objective-C 时代 ARC 不能处理的一个问题是 CF 类型的创建和释放。虽然不能自动化，但是遵循命名规则来处理的话还是比较简单的：对于 CF 系的 API，如果 API 的名字中含有 Create，Copy 或者 Retain 的话，在使用完成后，我们需要调用 CFRelease 来进行释放。
//
//不过 Swift 中这条规则已成明日黄花。既然我们有了明确的规则，那为什么还要一次一次不厌其烦地手动去写 Release 呢？基于这种想法，Swift 中我们不再需要显式地去释放带有这些关键字的内容了 (事实上，含有 CFRelease 的代码甚至无法通过编译)。也就是说，CF 现在也在 ARC 的管辖范围之内了。其实背后的机理一点都不复杂，只不过在合适的地方加上了像 CF_RETURNS_RETAINED 和 CF_RETURNS_NOT_RETAINED 这样的标注。