//
//  AppDelegate.swift
//  ReproducerApp
//

import UIKit
import React_RCTAppDelegate

@main
class AppDelegate: RCTAppDelegate {
    
    class var shared: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    var launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    var orientationLock = UIInterfaceOrientationMask.portrait

    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("React Native Initializing...")
        self.automaticallyLoadReactNativeWindow = false
        super.application(application, didFinishLaunchingWithOptions: launchOptions)
        
        window = UIWindow()
        window.rootViewController = ViewController()
        window.makeKeyAndVisible()
        
        return true
    }

    override func sourceURL(for bridge: RCTBridge) -> URL? {
        self.bundleURL()
    }

    override func bundleURL() -> URL? {
        #if DEBUG
        RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index")
        #else
        Bundle.main.url(forResource: "main", withExtension: "jsbundle")
        #endif
    }

    override func applicationWillEnterForeground(_ application: UIApplication) {
        
    }

    override func applicationDidBecomeActive(_ application: UIApplication) {
        
    }
}
