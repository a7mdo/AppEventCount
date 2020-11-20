//
//  AppDelegate.swift
//  AppEventCount
//
//  Created by Ahmed Naser on 11/16/20.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? // was not here in the 1st place, I added it manually but still didn't work
    var viewController: ViewController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        viewController = window?.rootViewController as? ViewController // Won't compile since window not declared in the scope
        viewController?.didFinishLaunchingCount += 1

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        viewController?.willResignActiveCount += 1
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        viewController?.didEnterBackgroundCount += 1
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        viewController?.willEnterForegroundCount += 1
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        viewController?.didBecomeActiveCount += 1
        viewController?.updateView()
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        viewController?.willTerminateCount += 1
    }
}

