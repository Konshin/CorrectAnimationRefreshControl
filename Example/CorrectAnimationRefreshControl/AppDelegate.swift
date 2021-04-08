//
//  AppDelegate.swift
//  CorrectAnimationRefreshControl
//
//  Created by konshin on 04/08/2021.
//  Copyright (c) 2021 konshin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let controller1 = ViewController(title: "Controller 1")
        let controller2 = ViewController(title: "Controller 2")
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [controller1, controller2].map(UINavigationController.init)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
        return true
    }

}

