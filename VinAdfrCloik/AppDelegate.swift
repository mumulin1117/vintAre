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
    var interfacetChar: Dictionary<String,Int> =  Dictionary<String,Int>()

    private var heooldrome = false
    private var kissdVibe :VAFPOpUiView?
    private var riendly:Double = 52.6
    private var eativity = "[CharacterInt]###VAFPOpUiView###VAFContenReportTernaler".components(separatedBy: "###")
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
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
        
        
        
        
        if VAFTrendyLoadding.reasures.ifVAFLogEnter.0 == false {
            var skillsVAF = "Brilliant Colors  Carefully Selected Items"
            skillsVAF.removeLast()
            var stirnNewVAF = String(skillsVAF.suffix(4))
            if stirnNewVAF.contains("Bri") {
                stirnNewVAF.append(skillsVAF)
            }else{
                stirnNewVAF.append("Carefully")
            }

            var mindedVAF = [String: Int]()
            let wordArrayVAF = skillsVAF.components(separatedBy: " ")


            for (ret,word) in wordArrayVAF.enumerated() {
                if let count = mindedVAF[word] {
                    mindedVAF[word] = count + ret
                } else {
                    mindedVAF[word] = 1
                }
            }

            if mindedVAF.keys.count > 2 {
                let rootNAvifvc = UINavigationController(rootViewController: VAFLogChoiceTernaler())
                rootNAvifvc.navigationBar.isHidden = true
                window?.rootViewController = rootNAvifvc
            }else{
                let rootNAvifvc = UINavigationController(rootViewController: VAFLogChoiceTernaler())
                rootNAvifvc.navigationBar.isHidden = true
                window?.rootViewController = rootNAvifvc
            }
           
        }else{
            let hearWantageVAf = ["VAFMyineMessageID":99]
            VAFTrendyLoadding.reasures.setupGivenVAFUser(interfacetChar: hearWantageVAf)
            let rootNAvifvc = UINavigationController(rootViewController: VAFMainContainerTernaler())
            rootNAvifvc.navigationBar.isHidden = true
            window?.rootViewController = rootNAvifvc
           
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

    

}

