//
//  Link.swift
//  SwiftTemplate
//
//  Created by RuanMei on 2019/10/21.
//  Copyright © 2019 RuanMei. All rights reserved.
//

import Foundation

extension AppDelegate {
    
    @available(iOS 9.0, *)
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return true
    }
    
}

extension SceneDelegate {
    
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
         
     }
     
    
}
