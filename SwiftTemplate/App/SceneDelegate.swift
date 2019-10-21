//
//  SceneDelegate.swift
//  zzz
//
//  Created by RuanMei on 2019/10/19.
//  Copyright © 2019 RuanMei. All rights reserved.
//

import UIKit

@available(iOS 13, *)
class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        window = self.configureRootWindow(scene: scene)
        self.configureIQKeyboard()
    }
    

}

