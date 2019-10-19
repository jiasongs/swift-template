//
//  Configure.swift
//  SwiftTemplate
//
//  Created by RuanMei on 2019/10/19.
//  Copyright © 2019 RuanMei. All rights reserved.
//

import Foundation

// 抽取公共的方法
extension AppDelegate {
    
    func configureRootWindow() -> UIWindow {
        let window = UIWindow.init(frame: UIScreen.main.bounds);
        window.rootViewController = ViewController.init();
        window.makeKeyAndVisible();
        return window;
    }
    
    // 唤起app时
    @available(iOS 9.0, *)
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return true
    }
    
    // iOS 8-10 点击远程消息推送
    @available(iOS, introduced: 3.0, deprecated: 10.0)
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any]) {
        
    }
    
    // iOS 8-10 点击本地消息推送
    @available(iOS, introduced: 3.0, deprecated: 10.0)
    func application(_ application: UIApplication, didReceive notification: UILocalNotification) {
        
    }
    
    
    // iOS 10+ 处理前台收到通知的代理方法
    @available(iOS 10.0, *)
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        
    }
    
    // iOS 10+ 点击消息推送的方法，包括点击本地推送
    @available(iOS 10.0, *)
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        
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
    
    
    func sceneDidDisconnect(_ scene: UIScene) {
        
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        
    }
    
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        
    }
    
    
}
