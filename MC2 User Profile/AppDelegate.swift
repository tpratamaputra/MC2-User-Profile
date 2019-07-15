//
//  AppDelegate.swift
//  MC2 User Profile
//
//  Created by Thomas Pratama Putra on 09/07/19.
//  Copyright © 2019 thomaspputra. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let navBar = UINavigationBar.appearance()
        navBar.barTintColor = #colorLiteral(red: 0.1019607843, green: 0.1019607843, blue: 0.2117647059, alpha: 1)
        navBar.tintColor = .white
        navBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }


}

