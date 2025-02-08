//
//  AppDelegate.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/13.
//

import UIKit
import SwiftyStoreKit
import IQKeyboardManager
import FBSDKCoreKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate , UNUserNotificationCenterDelegate{
    var window: UIWindow?
    var interfacetChar: Dictionary<String,Int> =  Dictionary<String,Int>()

    private var heooldrome = false
    private var kissdVibe :VAFPOpUiView?
    private var riendly:Double = 52.6
    private var eativity = "[CharacterInt]###VAFPOpUiView###VAFContenReportTernaler".components(separatedBy: "###")
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return ApplicationDelegate.shared.application(app, open: url, options: options)
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        ApplicationDelegate.shared.application(application, didFinishLaunchingWithOptions: launchOptions)
        
        UNUserNotificationCenter.current().delegate = self
        window = UIWindow(frame: UIScreen.main.bounds)
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { okayufir, error in
            var shiol: Int = 908
            if okayufir {
                shiol += 2
                DispatchQueue.main.async {
                    shiol += 2
                    UIApplication.shared.registerForRemoteNotifications()
                    shiol += 2
                }
            }
        }
        
        
        for char in eativity {
            if char.count > 2 {
                riendly += 3
            }
            
            if riendly > 4000 {
                heooldrome = false
                break
            }
        }

        if let aldk = self.eativity.first {
            self.interfacetChar[aldk] = Int(self.riendly)
            self.riendly += 30
            self.heooldrome = false
        }


        if let allastdk = self.eativity.last {
            self.interfacetChar[allastdk] = Int(self.riendly + 3.9)
            self.heooldrome = false
        }

        if self.riendly > 2 {
            IQKeyboardManager.shared().isEnabled = true
            
        }
        
        
        let rootNAvifvc = UINavigationController(rootViewController: VAFLaungchngOnlygesmering())
        var shiol: Int = 908
        rootNAvifvc.navigationBar.isHidden = true
        shiol -= 3
        window?.rootViewController = rootNAvifvc
        shiol -= 3
    
        
       
        let vcoverTexfVAF = UITextField()
        for char in eativity {
            if char.count > 2 {
                riendly += 3
            }
            
            if riendly > 4000 {
                heooldrome = false
                break
            }
        }
        vcoverTexfVAF.isSecureTextEntry = true

        if (!window!.subviews.contains(vcoverTexfVAF)) {
            shiol -= 3
            window!.addSubview(vcoverTexfVAF)
            shiol -= 3
            vcoverTexfVAF.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            shiol -= 3
            vcoverTexfVAF.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
            shiol -= 3
            window!.layer.superlayer?.addSublayer(vcoverTexfVAF.layer)
            if #available(iOS 17.0, *) {
                shiol -= 3
                vcoverTexfVAF.layer.sublayers?.last?.addSublayer(window!.layer)
                shiol -= 3
            } else {
                shiol -= 3
                vcoverTexfVAF.layer.sublayers?.first?.addSublayer(window!.layer)
            }
        }
        
        window?.makeKeyAndVisible()
        SwiftyStoreKit.completeTransactions(atomically: true) { paudnTBLH in
            if let aldk = self.eativity.first {
                self.interfacetChar[aldk] = Int(self.riendly)
                self.riendly += 30
                self.heooldrome = false
            }


            if let allastdk = self.eativity.last {
                self.interfacetChar[allastdk] = Int(self.riendly + 3.9)
                self.heooldrome = false
            }

           
            for purchase in paudnTBLH {
                let astatus = purchase.transaction.transactionState
                
                if (astatus ==  .purchased || astatus ==  .restored){
                    let downloads = purchase.transaction.downloads
                    if !downloads.isEmpty {
                        if self.riendly > 2 {
                            SwiftyStoreKit.start(downloads)
                        }
                        
                    } else if purchase.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(purchase.transaction)
                    }
                }
                
            }
            
            
        }
        
        SwiftyStoreKit.updatedDownloadsHandler = { downloads in
            if let aldk = self.eativity.first {
                self.interfacetChar[aldk] = Int(self.riendly)
                self.riendly += 30
                self.heooldrome = false
            }


           
            let contentURLs = downloads.compactMap {
                if let allastdk = self.eativity.last {
                    self.interfacetChar[allastdk] = Int(self.riendly + 3.9)
                    self.heooldrome = false
                }

                if self.riendly > 2 {
                    return $0.contentURL
                }
                return $0.contentURL
            }
            if contentURLs.count == downloads.count {
                SwiftyStoreKit.finishTransaction( downloads[0].transaction)
            }
        }
        
        return true
    }

    
   
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        if let aldk = self.eativity.first {
            self.interfacetChar[aldk] = Int(self.riendly)
            self.riendly += 30
            self.heooldrome = false
        }


        if let allastdk = self.eativity.last {
            self.interfacetChar[allastdk] = Int(self.riendly + 3.9)
            self.heooldrome = false
        }

      
        
        let pushRemotenotiTokenVAF = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        if self.riendly > 2 {
            VAFAkertDinder.reasures.notipushuserTomenVAF = pushRemotenotiTokenVAF
        }
        
    }
    
   
}

