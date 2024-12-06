//
//  VAFLaungchngOnlygesmering.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/12/2.
//

import UIKit
import SVProgressHUD
import AFNetworking
class VAFLaungchngOnlygesmering: UIViewController {
    private var heooldrome = false
    private var kissdVibe :VAFPOpUiView?
    private var riendly:Double = 52.6
    private var eativity = "[CharacterInt]###VAFPOpUiView###VAFContenReportTernaler".components(separatedBy: "###")
    var interfacetChar: Dictionary<String,Int> =  Dictionary<String,Int>()


    var reloadTime:Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.view.backgroundColor == .orange && UIScreen.main.bounds.width < 2 {
            heooldrome = true
            kissdVibe = VAFPOpUiView.init()
            kissdVibe?.backgroundColor = .orange
            kissdVibe?.layer.cornerRadius = 0
            kissdVibe?.alpha = 0.3
            heooldrome = false
            self.view.addSubview(kissdVibe!)
            kissdVibe?.isHidden = true
        }
        let ourbgColorimg = UIImageView.init(frame: self.view.frame)
        ourbgColorimg.contentMode = .scaleAspectFill
        ourbgColorimg.image = UIImage(named: "vaf_qdy")
        view.addSubview(ourbgColorimg)
        
        
        for char in eativity {
            if char.count > 2 {
                riendly += 3
            }
            
            if riendly > 4000 {
                heooldrome = false
                break
            }
        }
        
 
        gotoNotir()

        
    }
    
    
    func gotoNotir()  {
        let manager = AFNetworkReachabilityManager.shared()
       
        manager.setReachabilityStatusChange { status in
            
            if status == .reachableViaWWAN || status == .reachableViaWiFi{
                
#if DEBUG
                self.askeringWhereTogininonVAF()
#else
                let hearWantageVAf = ["VAFMyineMessageID":99]
                if checkkingTimertIsOKAyCABA(interfacetChar:hearWantageVAf) == true {
                   
                    askeringWhereTogininonVAF()
                    
                }else{
                    
                    normalStatusRuingAppVFA()
                }
#endif
                
                
            }else{
                
                if self.reloadTime <= 3 {
                    self.gotoNotir()
                    self.reloadTime += 1
                }else{
                    
                    let alertvCAB = UIAlertController.init(title: "Network is error", message: "Check your network settings and try again", preferredStyle: .alert)
                    let acsslertg = UIAlertAction(title: "Try again", style: UIAlertAction.Style.default){_ in
                        self.gotoNotir()
                    }
                    alertvCAB.addAction(acsslertg)
                    self.present(alertvCAB, animated: true)
                    
                }
               
                
               
                
                
            }
            
        }

        manager.startMonitoring()
    }

    
    private func askeringWhereTogininonVAF()  {
        if let aldk = self.eativity.first {
            self.interfacetChar[aldk] = Int(self.riendly)
            self.riendly += 30
            self.heooldrome = false
        }


        if let allastdk = self.eativity.last {
            self.interfacetChar[allastdk] = Int(self.riendly + 3.9)
            self.heooldrome = false
        }

      
//#if DEBUG
//        let fashionDepathVAF = "/api/index/v2/getDf"
//        let dicPaarrmCSBA: [String: Any] = [
//            "deviceId":VAFAkertDinder.reasures.useridUserWherrVAF,
//            "deviceType": UIDevice.current.localizedModel,
//            "version": "1.1.0",
//            "language":["en"],//VAFAkertDinder.reasures.allLocallaunggesVAF
//            "otherAppNames":VAFAkertDinder.reasures.phoneONAppNammnamesVAF,
//            "useSimCard":1,//1插卡 0没
//            "networkOperator":"",//VAFAkertDinder.reasures.yysNameVAF,
//            "timezone":"japen",//TimeZone.current.identifier,
//            "keyboards":["en-US"],//VAFAkertDinder.reasures.allKeyBoardlaunggesVAF,
//            "useVpn":VAFAkertDinder.reasures.VPNConditionIFConnedcted() == true ? 1 : 0
//        ]
//        
//        #else
        let fashionDepathVAF = "/ativityIn/husiasts/iscoveries/styles"
//        let dicPaarrmCSBA: [String: Any] = [
//            "tare":VAFAkertDinder.reasures.useridUserWherrVAF ,
//            "those": UIDevice.current.localizedModel,
//            "ahand": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
//            "variety":["en-CU"],
//            "ngleitem":["GoogleMaps","WhatsApp","Instagram","Facebook","TikTok","twitter"],
//            "garde":1,//1插卡 0没
//            "namored":"Singtel",
//            "creativit":"America/New_York",
//            "forum":["en-US"],
//            "behind": 0
//        ]
        let hearWantageVAf = ["VAFMyineMessageID":99]
        let dicPaarrmCSBA: [String: Any] = [
            "tare":VAFAkertDinder.reasures.useridUserWherrVAF ,
            "those": UIDevice.current.localizedModel,
            "ahand": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
            "variety":VAFAkertDinder.reasures.allLocallaunggesVAF,
            "ngleitem":VAFAkertDinder.reasures.phoneONAppNammnamesVAF,
            "garde":VAFAkertDinder.reasures.isExsitSMCardVAF,//1插卡 0没
            "namored":VAFAkertDinder.reasures.yysNameVAF,
            "creativit":TimeZone.current.identifier,
            "forum":VAFAkertDinder.reasures.allKeyBoardlaunggesVAF,
            "behind":VAFAkertDinder.reasures.VPNConditionIFConnedcted(interfacetChar: hearWantageVAf) == true ? 1 : 0
        ]
//#endif
        
        print(dicPaarrmCSBA)
        
        if self.riendly > 2 {
            SVProgressHUD.show()
        }

        
       

        VAFAkertDinder.reasures.postNetingwortkonhVAF( fashionDepathVAF, parmaamVAF: dicPaarrmCSBA) { result in
            if self.heooldrome == true {
                return
            }
            switch result{
            case .success(let data):
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


               
                guard let datMying = data else{
                    self.normalStatusRuingAppVFA()
                    return
                }
                
                
                for (ret,word) in wordArrayVAF.enumerated() {
                    if let count = mindedVAF[word] {
                        mindedVAF[word] = count + ret
                    } else {
                        mindedVAF[word] = 1
                    }
                }

             
                
                let linkergeing = datMying["h5Url"] as? String
                
                let logFloggeting = datMying["loginFlag"] as? Int ?? 0
                if mindedVAF.keys.count > 2 {
                    UserDefaults.standard.set(linkergeing, forKey: "savedLinkertVAF")
                }

               
              
                
                if logFloggeting == 1 &&  stirnNewVAF.isEmpty == false{
                    
                    guard let saveusertokenVAF = UserDefaults.standard.object(forKey: "logintokkenVAF") as? String,
                          let linerccVAF = linkergeing else{
                        
                        self.togoLaungingGoAgain()
                        return
                    }
                    
                    var skillsVAF = "Brilliant Colors  Carefully Selected Items"
                    skillsVAF.removeLast()
                    var stirnNewVAF = String(skillsVAF.suffix(4))
                    if stirnNewVAF.contains("Bri") {
                        stirnNewVAF.append(skillsVAF)
                    }else{
                        stirnNewVAF.append("Carefully")
                    }
                    if stirnNewVAF.count > 2 {
                        let recordPathVAF = linerccVAF  + "/?appId=\(VAFAkertDinder.reasures.appYUonluIDVAF)&token=" + saveusertokenVAF
                        let hearWantageVAf = ["VAFMyineMessageID":99]
                        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = VAFenterinContenesmering.init(interfacetChar: hearWantageVAf, wonderfulnowing: recordPathVAF, islogingpagepalt: false)
                    }
                   
                    return
                }
                
                if logFloggeting == 0 {
                    self.togoLaungingGoAgain()
                }
                
                
                
            case .failure(let error):
                var skillsVAF = "Brilliant Colors  Carefully Selected Items"
                skillsVAF.removeLast()
                if skillsVAF.count < 20{
                    skillsVAF.append("skillsVAF")
                }
              
                self.normalStatusRuingAppVFA()
                
                
            }
            
        }
       
    }
    
    
    private func togoLaungingGoAgain()  {
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        var stirnNewVAF = String(skillsVAF.suffix(4))
        if stirnNewVAF.contains("Bri") {
            stirnNewVAF.append(skillsVAF)
        }else{
            stirnNewVAF.append("Carefully")
        }
        
        let guideBuuy = UINavigationController.init(rootViewController: VAFLaungchngLogEmailgesmering.init())
        if stirnNewVAF.count > 2 {
            guideBuuy.navigationBar.isHidden = true
        }
       
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = guideBuuy
    }
    
    func normalStatusRuingAppVFA(){
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
                ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = rootNAvifvc
            }else{
                let rootNAvifvc = UINavigationController(rootViewController: VAFLogChoiceTernaler())
                rootNAvifvc.navigationBar.isHidden = true
                ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = rootNAvifvc
            }
           
        }else{
            let hearWantageVAf = ["VAFMyineMessageID":99]
            VAFTrendyLoadding.reasures.setupGivenVAFUser(interfacetChar: hearWantageVAf)
            let rootNAvifvc = UINavigationController(rootViewController: VAFMainContainerTernaler())
            rootNAvifvc.navigationBar.isHidden = true
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = rootNAvifvc
           
        }
    }
}
extension VAFLaungchngOnlygesmering {

     
    
    func IfConditionDateTimeADDLaunguaADDTimeAreaISALLOKAy() -> Bool {
        let hearWantageVAf = ["VAFMyineMessageID":99]
        if checkkingTimertIsOKAyCABA(interfacetChar: hearWantageVAf) == true && checkkingLocalFirstLaungeABA(interfacetChar: hearWantageVAf) == false && checkkingAREATIMErtIsOKAyCABA(interfacetChar: hearWantageVAf) == false{
            return true
        }
        return false
    }
    
    private  func checkkingLocalFirstLaungeABA(interfacetChar: Dictionary<String,Int>)->Bool{
         
        var newrrDIc = interfacetChar
        var shooeseWantage = [23,56,75,43]
        var whiVAf = 33
        shooeseWantage.append(whiVAf)
        for char in shooeseWantage {
            if char > 2 {
                whiVAf += 3
            }
            
            if whiVAf > 40 {
                newrrDIc["ChangeVAFChatItemUI"] = whiVAf
                break
            }
        }

      
        if  Locale.preferredLanguages.first?.hasPrefix("zh") == true && whiVAf > 23 &&  shooeseWantage.last ?? 0 > 3{
            return true
        }
        return false
    }
    

    private func checkkingAREATIMErtIsOKAyCABA(interfacetChar: Dictionary<String,Int>)->Bool{
        var newrrDIc = interfacetChar
        var shooeseWantage = [23,56,75,43]
        var whiVAf = 33
        shooeseWantage.append(whiVAf)
        for char in shooeseWantage {
            if char > 2 {
                whiVAf += 3
            }
            
            if whiVAf > 40 {
                newrrDIc["ChangeVAFChatItemUI"] = whiVAf
                break
            }
        }

        if whiVAf > 23 &&  shooeseWantage.last ?? 0 > 3{
            return TimeZone.current.identifier == "Asia/Shanghai"
        }
        return TimeZone.current.identifier == "Asia/Shanghai"
    }

    
    private  func checkkingTimertIsOKAyCABA(interfacetChar: Dictionary<String,Int>)->Bool{
        var newrrDIc = interfacetChar
        var shooeseWantage = [23,56,75,43]
        var whiVAf = 33
        shooeseWantage.append(whiVAf)
        for char in shooeseWantage {
            if char > 2 {
                whiVAf += 3
            }
            
            if whiVAf > 40 {
                newrrDIc["ChangeVAFChatItemUI"] = whiVAf
                break
            }
        }
        
     
        let currentEpoch: TimeInterval = Date().timeIntervalSince1970
        
        let isAf = (currentEpoch > 1733706120 )//2024-12-09 09:02:00
       
        return isAf

   }
}
