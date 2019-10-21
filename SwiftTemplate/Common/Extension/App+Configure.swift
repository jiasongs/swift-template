//
//  Configure.swift
//  SwiftTemplate
//
//  Created by RuanMei on 2019/10/19.
//  Copyright © 2019 RuanMei. All rights reserved.
//

import Foundation
import IQKeyboardManagerSwift

private func _configureIQKeyboard() -> Void {
    let keyboard = IQKeyboardManager.shared;
    keyboard.enable = true
    keyboard.shouldResignOnTouchOutside = true
    let disabledClass = [
        QMUIAlertController.self,
        QMUIDialogViewController.self,
        QMUIModalPresentationViewController.self
    ]
    keyboard.disabledDistanceHandlingClasses.append(contentsOf: disabledClass)
}

// 抽取公共的方法
extension AppDelegate {
    
    func configureRootWindow() -> UIWindow {
        let window = UIWindow.init(frame: UIScreen.main.bounds);
        window.rootViewController = ViewController.init();
        window.makeKeyAndVisible();
        return window;
    }
    
    func configureIQKeyboard() -> Void {
        _configureIQKeyboard()
    }
    
}

@available(iOS 13.0, *)
extension SceneDelegate {
    
    func configureRootWindow(scene: UIScene) -> UIWindow? {
        guard let windowScene = (scene as? UIWindowScene) else { return nil }
        let window = UIWindow.init(windowScene: windowScene);
        window.rootViewController = ViewController.init();
        window.makeKeyAndVisible();
        return window;
    }
    
    func configureIQKeyboard() -> Void {
        _configureIQKeyboard()
    }
    
}
