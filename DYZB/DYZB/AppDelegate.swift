//
//  AppDelegate.swift
//  DYZB
//
//  Created by 张振宇 on 2019/3/4.
//  Copyright © 2019 张振宇. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        UITabBar.appearance().tintColor = UIColor.orange
        
        return true
    }

   
}

