//
//  AppDelegate.swift
//  swifttest
//
//  Created by John Dutchak on 6/23/15.
//  Copyright (c) 2015 JD. All rights reserved.
//

import UIKit
import HangitSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, SessionManagerDelegate {

    var window: UIWindow?
    var sessionManager:SessionManager!

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.

        sessionManager = SessionManager.sharedInstance();
        sessionManager.presentNotifications = true;
        sessionManager.presentOfferView = true;
        sessionManager.delegate = self;
        sessionManager.startSession("YOURAPPID");
        
        /**
        *  Starts Location Manager in SDK
        *  Use this method when you want to
        *  offer location enabled deals
        */
        sessionManager.startLocation();
        
        /**
        *  Stops Location Manager in SDK
        *
        *  Stops Location Manager in SDK
        *  Use this method when you want to
        *  stop offering location enabled deals
        */
        // sessionManager.stopLocation();

        
        /**
        *  Respond true or false wether location
        *  is enabled or disabled by the user
        *  for your app
        */
        // sessionManager.isLocationEnabled();

        return true
    }

    func application(application: UIApplication, didReceiveLocalNotification notification: UILocalNotification) {

        NSNotificationCenter.defaultCenter().postNotificationName("hangitNotificationReceived", object: notification);
        
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


}

