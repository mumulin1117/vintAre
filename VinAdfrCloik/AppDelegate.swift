//
//  AppDelegate.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/13.
//

import UIKit
import SwiftyStoreKit
import IQKeyboardManager

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        IQKeyboardManager.shared().isEnabled = true
        
        
        
        
        if VAFTrendyLoadding.reasures.ifVAFLogEnter == false {
            
            let rootNAvifvc = UINavigationController(rootViewController: VAFLogChoiceTernaler())
            rootNAvifvc.navigationBar.isHidden = true
            window?.rootViewController = rootNAvifvc
        }else{
            VAFTrendyLoadding.reasures.setupGivenVAFUser()
            let rootNAvifvc = UINavigationController(rootViewController: VAFMainContainerTernaler())
            rootNAvifvc.navigationBar.isHidden = true
            window?.rootViewController = rootNAvifvc
           
        }
        
        
        window?.makeKeyAndVisible()
        SwiftyStoreKit.completeTransactions(atomically: true) { paudnTBLH in
            for purchase in paudnTBLH {
                let astatus = purchase.transaction.transactionState
                
                if (astatus ==  .purchased || astatus ==  .restored){
                    let downloads = purchase.transaction.downloads
                    if !downloads.isEmpty {
                        SwiftyStoreKit.start(downloads)
                    } else if purchase.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(purchase.transaction)
                    }
                }
                
            }
            
            
        }
        
        SwiftyStoreKit.updatedDownloadsHandler = { downloads in
            
            let contentURLs = downloads.compactMap {
                
                return $0.contentURL
            }
            if contentURLs.count == downloads.count {
                SwiftyStoreKit.finishTransaction( downloads[0].transaction)
            }
        }
        
        return true
    }

    

}

