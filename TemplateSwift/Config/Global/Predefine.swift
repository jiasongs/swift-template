//
//  Predefine.swift
//  TemplateSwift
//
//  Created by RuanMei on 2019/10/14.
//  Copyright © 2019 RuanMei. All rights reserved.
//

import UIKit

/// 设备类型
var IS_IPAD: Bool {
    return QMUIHelper.isIPad();
}
var IS_IPOD: Bool {
    return QMUIHelper.isIPod();
}
var IS_IPHONE: Bool {
    return QMUIHelper.isIPhone();
}
var IS_SIMULATOR: Bool {
    return QMUIHelper.isSimulator();
}
/// 操作系统版本号，只获取第二级的版本号，例如 10.3.1 只会得到 10.3
var IOS_VERSION: Double {
    return Double(UIDevice.current.systemVersion)!;
}
/// 数字形式的操作系统版本号，可直接用于大小比较；如 110205 代表 11.2.5 版本；根据 iOS 规范，版本号最多可能有3位
var IOS_VERSION_NUMBER: Int {
    return QMUIHelper.numbericOSVersion();
}
/// 是否横竖屏
/// 用户界面横屏了才会返回YES
//var IS_LANDSCAPE: Bool {
//    return UIApplication.shared.statusBarOrientation.isLandscape;
//}
/// 无论支不支持横屏，只要设备横屏了，就会返回YES
var IS_DEVICE_LANDSCAPE: Bool {
    return UIDevice.current.orientation.isLandscape;
}
/// 屏幕宽度，会根据横竖屏的变化而变化
var SCREEN_WIDTH: CGFloat {
    return UIScreen.main.bounds.size.width
}
/// 屏幕高度，会根据横竖屏的变化而变化
var SCREEN_HEIGHT: CGFloat {
    return UIScreen.main.bounds.size.height
}
/// 设备宽度，跟横竖屏无关
var DEVICE_WIDTH: CGFloat {
    return min(UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height)
}
/// 设备高度，跟横竖屏无关
var DEVICE_HEIGHT: CGFloat {
    return max(UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height)
}
/// 在 iPad 分屏模式下等于 app 实际运行宽度，否则等同于 SCREEN_WIDTH
var APPLICATION_WIDTH: CGFloat {
    return QMUIHelper.applicationSize().width
}
/// 在 iPad 分屏模式下等于 app 实际运行高度，否则等同于 DEVICE_HEIGHT
var APPLICATION_HEIGHT: CGFloat {
    return QMUIHelper.applicationSize().height
}
/// 是否全面屏设备
var IS_NOTCHED_SCREEN: Bool {
    return QMUIHelper.isNotchedScreen()
}
