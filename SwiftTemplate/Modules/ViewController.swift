//
//  ViewController.swift
//  SwiftTemplate
//
//  Created by RuanMei on 2019/10/14.
//  Copyright © 2019 RuanMei. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: ZSBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white;
        print(SCREEN_WIDTH);
        print(IS_IPHONE);
        print(IS_SIMULATOR);
            DispatchQueue.main.asyncAfter(deadline: .now()+2, execute:
        {
            print(IS_SIMULATOR);
        })
   
    }


}

