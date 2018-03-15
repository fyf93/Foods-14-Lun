//
//  AppDelegate.swift
//  Foods
//
//  Created by Anna Grazia Cervo on 15/12/17.
//  Copyright © 2017 Anna Grazia Cervo. All rights reserved.
//



import Foundation

//*** 1: ok



import UIKit

//*** 1 import module: ok

//*** 2 import protocol: ok
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    //***
    
    
    //func sessionDidBecomeInactive(_ session: WCSession) {
        //code
    //}
    
    //func sessionDidDeactivate(_ session: WCSession) {
        //code
    
    
    //*** 3 manda notifica ricevuto messaggio da apple watch con info "message"
   
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //*** 4 configure session: ok
       
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        //***
//        Connection.shared.watchSession.sendMessage(["msg": "Happy Tummy is off"], replyHandler: nil, errorHandler: nil)
//
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        
        //***
//        Connection.shared.watchSession.sendMessage(["msg": "Happy Tummy is off"], replyHandler: nil, errorHandler: nil)
        
        
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        
        //***
//        Connection.shared.watchSession.sendMessage(["msg": "Someone is playing Happy Tummy"], replyHandler: nil, errorHandler: nil)
        
//          Connection.shared.flag = true
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        
        //***
//        Connection.shared.watchSession.sendMessage(["msg": "Someone is playing Happy Tummy"], replyHandler: nil, errorHandler: nil)
//        Connection.shared.flag = true
        
        
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        
        //*** When the application stop
//        Connection.shared.watchSession.sendMessage(["msg": "Happy Tummy is off"], replyHandler: nil, errorHandler: nil)
//        Connection.shared.flag = false
    }
    
}
        
        
    func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
        
        
        
        if (shortcutItem.type == "com.sbeff.Site") {
            
           let url = URL(string: "http://happytummy.asdintersocialelazzaroni.it/")!
            UIApplication.shared.open(url,options: [:], completionHandler: nil)
      
        }
        
        
    }




