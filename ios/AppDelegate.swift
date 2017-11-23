//
//  AppDelegate.swift
//  TestReactNativeApp
//
//  Created by Stanly Shiyanovskiy on 23.11.17.
//  Copyright © 2017 Facebook. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?
  var bridge: RCTBridge!
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
    /**
     * Loading JavaScript code - uncomment the one you want.
     *
     * OPTION 1
     * Load from development server. Start the server from the repository root:
     *
     * $ npm start
     *
     * To run on device, change `localhost` to the IP address of your computer
     * (you can get this by typing `ifconfig` into the terminal and selecting the
     * `inet` value under `en0:`) and make sure your computer and iOS device are
     * on the same Wi-Fi network.
     */
    
    let jsCodeLocation = URL(string: "http://localhost:8081/index.ios.bundle?platform=ios&dev=true")
    
    
    /**
     * OPTION 2
     * Load from pre-bundled file on disk. The static bundle is automatically
     * generated by "Bundle React Native code and images" build step.
     */
    
    // jsCodeLocation = NSBundle.mainBundle().URLForResource("main", withExtension: "jsbundle")
    
    let rootView = RCTRootView(bundleURL:jsCodeLocation, moduleName: "TestReactNativeApp", initialProperties: nil, launchOptions:launchOptions)
    
    self.bridge = rootView?.bridge
    
    self.window = UIWindow(frame: UIScreen.main.bounds)
    let rootViewController = UIViewController()
    
    rootViewController.view = rootView
    
    self.window!.rootViewController = rootViewController
    self.window!.makeKeyAndVisible()
    
    return true
  }
}
