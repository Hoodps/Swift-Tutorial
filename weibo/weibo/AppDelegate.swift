//
//  AppDelegate.swift
//  weibo
//
//  Created by xiexz on 15/12/19.
//  Copyright © 2015年 xiexz. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        let tabbar = tabViewController()
        self.window?.rootViewController = tabbar
        self.window?.makeKeyAndVisible()
        
        return true
    }
    
  

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
//    let Home = HomeViewController()
//    let Mess = MessViewController()
//    let Me = MeViewController()
//    let Found = FounViewController()
//    
//    Home.tabBarItem.title = "首页"
//    Mess.tabBarItem.title = "消息"
//    Me.tabBarItem.title = "我"
//    Found.tabBarItem.title = "搜索"
//    
//    Home.tabBarItem.image = UIImage(named: "tabbar_mainframe")
//    Mess.tabBarItem.image = UIImage(named: "tabbar_contacts")
//    Me.tabBarItem.image = UIImage(named: "tabbar_me")
//    Found.tabBarItem.image = UIImage(named: "tabbar_discover")
//    
//    Home.view.backgroundColor = UIColor.redColor()
//    Mess.view.backgroundColor = UIColor.blueColor()
//    Me.view.backgroundColor = UIColor.grayColor()
//    Found.view.backgroundColor = UIColor.orangeColor()
//    
//    Home.tabBarItem.selectedImage = UIImage(named: "tabbar_mainframeHL")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
//    Mess.tabBarItem.selectedImage = UIImage(named: "tabbar_contactsHL")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
//    Me.tabBarItem.selectedImage = UIImage(named: "tabbar_meHL")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
//    Found.tabBarItem.selectedImage = UIImage(named: "tabbar_discoverHL")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
//    
//    tabbar.addChildViewController(Home)
//    tabbar.addChildViewController(Mess)
//    tabbar.addChildViewController(Me)
//    tabbar.addChildViewController(Found)
//    


}

