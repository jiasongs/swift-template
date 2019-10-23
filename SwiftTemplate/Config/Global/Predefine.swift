//
//  Predefine.swift
//  SwiftTemplate
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
var IS_LANDSCAPE: Bool {
    if #available(iOS 13.0, *) {
        let windowScene:UIWindowScene! = UIApplication.shared.windows.first?.windowScene
        return windowScene.interfaceOrientation.isLandscape
    } else {
        return UIApplication.shared.statusBarOrientation.isLandscape
    }
}
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
/// iPhone XS Max
var IS_65INCH_SCREEN: Bool {
    return QMUIHelper.is65InchScreen()
}
/// iPhone XR
var IS_61INCH_SCREEN: Bool {
    return QMUIHelper.is61InchScreen()
}
/// iPhone X/XS
var IS_58INCH_SCREEN: Bool {
    return QMUIHelper.is58InchScreen()
}
/// iPhone 6/7/8 Plus
var IS_55INCH_SCREEN: Bool {
    return QMUIHelper.is55InchScreen()
}
/// iPhone 6/7/8
var IS_47INCH_SCREEN: Bool {
    return QMUIHelper.is47InchScreen()
}
/// iPhone 5/5S/SE
var IS_40INCH_SCREEN: Bool {
    return QMUIHelper.is40InchScreen()
}
/// iPhone 4/4S
var IS_35INCH_SCREEN: Bool {
    return QMUIHelper.is35InchScreen()
}
/// iPhone 4/4S/5/5S/SE
var IS_320WIDTH_SCREEN: Bool {
    return (IS_35INCH_SCREEN || IS_40INCH_SCREEN)
}
/// 是否Retina
var IS_RETINASCREEN: Bool {
    return UIScreen.main.scale >= 2.0
}
/// 是否放大模式（iPhone 6及以上的设备支持放大模式，iPhone X 除外）
var IS_ZOOMEDMODE: Bool {
    return QMUIHelper.isZoomedMode()
}
/// 获取一个像素
var PixelOne: CGFloat {
    return QMUIHelper.pixelOne()
}
/// bounds && nativeBounds / scale && nativeScale
var ScreenBoundsSize: CGSize {
    return UIScreen.main.bounds.size
}
var ScreenNativeBoundsSize: CGSize {
    return UIScreen.main.nativeBounds.size
}
var ScreenScale: CGFloat {
    return UIScreen.main.scale
}
var ScreenNativeScale: CGFloat {
    return UIScreen.main.nativeScale
}
/// toolBar相关frame
var ToolBarHeight: CGFloat {
    return (IS_IPAD ? (IS_NOTCHED_SCREEN ? 70 : (IOS_VERSION >= 12.0 ? 50 : 44)) : (IS_LANDSCAPE ? PreferredValueForVisualDevice(regular: 44, compact: 32) : 44) + SafeAreaInsetsConstantForDeviceWithNotch.bottom)
}
/// tabBar相关frame
var TabBarHeight: CGFloat {
    return (IS_IPAD ? (IS_NOTCHED_SCREEN ? 65 : (IOS_VERSION >= 12.0 ? 50 : 49)) : (IS_LANDSCAPE ? PreferredValueForVisualDevice(regular: 49, compact: 32) : 49) + SafeAreaInsetsConstantForDeviceWithNotch.bottom)
}
/// 状态栏高度(来电等情况下，状态栏高度会发生变化，所以应该实时计算，iOS 13 起，来电等情况下状态栏高度不会改变)
var StatusBarHeight: CGFloat {
    if #available(iOS 13.0, *) {
        let statusBarManager:UIStatusBarManager! = UIApplication.shared.windows.first?.windowScene?.statusBarManager
        return statusBarManager.isStatusBarHidden ? 0 : statusBarManager.statusBarFrame.size.height;
    }  else {
        return UIApplication.shared.isStatusBarHidden ? 0 : UIApplication.shared.statusBarFrame.size.height
    }
}
/// 状态栏高度(如果状态栏不可见，也会返回一个普通状态下可见的高度)
var StatusBarHeightConstant: CGFloat {
    if #available(iOS 13.0, *) {
        let statusBarManager:UIStatusBarManager! = UIApplication.shared.windows.first?.windowScene?.statusBarManager
        return statusBarManager.isStatusBarHidden ? 0 : statusBarManager.statusBarFrame.size.height;
    }  else {
        return UIApplication.shared.isStatusBarHidden ? (IS_IPAD ? (IS_NOTCHED_SCREEN ? 24 : 20) : PreferredValueForNotchedDevice(notchedDevice: IS_LANDSCAPE ? 0 : 44, otherDevice: 20)) : UIApplication.shared.statusBarFrame.size.height
    }
}
/// navigationBar 的静态高度
var NavigationBarHeight: CGFloat {
    return (IS_IPAD ? (IOS_VERSION >= 12.0 ? 50 : 44) : (IS_LANDSCAPE ? PreferredValueForVisualDevice(regular: 44, compact: 32) : 44))
}
/// 代表(导航栏+状态栏)，这里用于获取其高度
/// @warn 如果是用于 viewController，请使用 UIViewController(QMUI) qmui_navigationBarMaxYInViewCoordinator 代替
var NavigationContentTop: CGFloat {
    return StatusBarHeight + NavigationBarHeight
}
/// 同上，这里用于获取它的静态常量值
var NavigationContentTopConstant: CGFloat {
    return StatusBarHeightConstant + NavigationBarHeight
}
/// iPhoneX 系列全面屏手机的安全区域的静态值
var SafeAreaInsetsConstantForDeviceWithNotch: UIEdgeInsets {
    return QMUIHelper.safeAreaInsetsForDeviceWithNotch();
}
// MARK: 方法
/// 区分全面屏（iPhone X 系列）和非全面屏
func PreferredValueForNotchedDevice(notchedDevice: CGFloat, otherDevice: CGFloat) -> CGFloat {
    return QMUIHelper.isNotchedScreen() ? notchedDevice : otherDevice
}
/// 将所有屏幕按照宽松/紧凑分类，其中 iPad、iPhone XS Max/XR/Plus 均为宽松屏幕，但开启了放大模式的设备均会视为紧凑屏幕
func PreferredValueForVisualDevice(regular: CGFloat, compact: CGFloat) -> CGFloat {
    return QMUIHelper.isRegularScreen() ? regular : compact
}
