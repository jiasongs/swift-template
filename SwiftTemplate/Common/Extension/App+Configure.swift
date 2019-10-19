//
//  Configure.swift
//  SwiftTemplate
//
//  Created by RuanMei on 2019/10/19.
//  Copyright © 2019 RuanMei. All rights reserved.
//

import Foundation


extension AppDelegate {
    
    func configureRootWindow() -> UIWindow {
        let window = UIWindow.init(frame: UIScreen.main.bounds);
        window.rootViewController = ViewController.init();
        window.makeKeyAndVisible();
        return window;
    }
    
}

extension SceneDelegate {
    
    func configureRootWindow(scene: UIScene) -> UIWindow? {
        guard let windowScene = (scene as? UIWindowScene) else { return nil }
        let window = UIWindow.init(windowScene: windowScene);
        window.rootViewController = ViewController.init();
        window.makeKeyAndVisible();
        return window;
    }
    
}
