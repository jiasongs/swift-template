//
//  Notification.swift
//  SwiftTemplate
//
//  Created by RuanMei on 2019/10/21.
//  Copyright © 2019 RuanMei. All rights reserved.
//

import Foundation


extension AppDelegate: UNUserNotificationCenterDelegate {
        
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
