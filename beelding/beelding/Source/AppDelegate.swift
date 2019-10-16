//
//  AppDelegate.swift
//  beelding
//
//  Created by AdrienGreiner on 16/10/2019.
//  Copyright © 2019 Beeldi. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {

    internal var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.configureSdks()
        
        self.window = UIWindow()
        
        let rootViewController = EquipmentListViewController(nibName: String(describing: EquipmentListViewController.self), bundle: nil)
        self.window?.rootViewController = rootViewController
        self.window?.makeKeyAndVisible()
        
        return true
    }
}

fileprivate extension AppDelegate {
    
    func configureSdks() {
        // Configure Firebase
        FirebaseConfiguration.shared.setLoggerLevel(.min)
        FirebaseApp.configure()
       
        // Configure FirebaseDatabase
        Database.database().callbackQueue = DispatchQueue.global()
        Database.database().isPersistenceEnabled = true
    }
}

