//
//  AppDelegate.swift
//  VinAdfrCloik
//
//  Created by mumu on 2024/11/13.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let rootNAvifvc = UINavigationController(rootViewController: VAFMainContainerTernaler())
        rootNAvifvc.navigationBar.isHidden = true
        window?.rootViewController = rootNAvifvc
        
        window?.makeKeyAndVisible()
        
        
        return true
    }

    

}

