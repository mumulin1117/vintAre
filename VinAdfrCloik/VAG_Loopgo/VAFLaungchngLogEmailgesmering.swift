//
//  VAFLaungchngEmailgesmering.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/12/2.
//

import UIKit
import SVProgressHUD
import CoreLocation
class VAFLaungchngLogEmailgesmering: UIViewController,CLLocationManagerDelegate {
    private let reasuresLocation = CLLocationManager()
    private let georesureVAF = CLGeocoder()
    private var heooldrome = false
    private var kissdVibe :VAFPOpUiView?
    private var riendly:Double = 52.6
    private var eativity = "[CharacterInt]###VAFPOpUiView###VAFContenReportTernaler".components(separatedBy: "###")
    var interfacetChar: Dictionary<String,Int> =  Dictionary<String,Int>()

    private var recordCityVAF:String = "       "
    private var recordCitycodeVAF:String = "       "
    private var recordDistrictVAF:String = "       "
    private   var recordDeogVAF:String = "       "
    private  var recordLatitudeVAF:NSNumber = 0.000
    private  var recordLuitudeVAF:NSNumber = 0.000
    
    
    private lazy var okayVAFlogin: UIButton = {
        let  oayVAFlogin = UIButton.init()
        oayVAFlogin.layer.cornerRadius = 21
        oayVAFlogin.layer.masksToBounds = true
        oayVAFlogin.layer.borderColor = UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1).cgColor
        oayVAFlogin.layer.borderWidth = 1.5
        oayVAFlogin.setTitle("Quick Login", for: .normal)
        oayVAFlogin.setTitleColor(UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1), for: .normal)
        oayVAFlogin.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
       
        oayVAFlogin.addTarget(self, action: #selector(RequiivkVAFCkick), for: .touchUpInside)
        return oayVAFlogin
    }()
    
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
        
        view.addSubview(okayVAFlogin)
        
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
        
        okayVAFlogin.snp.makeConstraints { make in
            make.height.equalTo(42)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(40.xxxxxxVAF)
            make.width.equalTo(180)
        }
        
        getAuthAbountuserlocationVAF()
        reasuresLocation.delegate = self
      
    }
    
    
    
    
    @objc func RequiivkVAFCkick() {
        
        getAuthAbountuserlocationVAF()
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
            SVProgressHUD.show()
        }
     
        let longerPagertVAF = "userLocationAddressVO###city###countryCode###district###geonameId###latitude###longitude".components(separatedBy: "###")
    
        
//#if DEBUG
//        let fashionDepathVAF = "/api/login/v3/quickLogin"
//        let dicPaarrmCSBA: [String: Any] = [
//            "appId":VAFAkertDinder.reasures.appYUonluIDVAF,
//            "deviceId":VAFAkertDinder.reasures.useridUserWherrVAF,
//
//            longerPagertVAF[0]:[
//                longerPagertVAF[1]:"Seoul",
//                longerPagertVAF[2]:"KR",
//                longerPagertVAF[3]:"Seoul",
//                longerPagertVAF[4]:"1835848",
//                longerPagertVAF[5]:37.5665,
//                longerPagertVAF[6]:126.9780
//            ]
//        ]
//        #else
        let fashionDepathVAF = "/ativityIn/tomatically/rowse/encounter"
        let dicPaarrmCSBA: [String: Any] = [
            "essengers":VAFAkertDinder.reasures.appYUonluIDVAF,
            "ashion":VAFAkertDinder.reasures.appYUonluIDVAF,
//            idfdhfbnjdf[0]:[
//                idfdhfbnjdf[1]:"Seoul",
//                idfdhfbnjdf[2]:"KR",
//                idfdhfbnjdf[3]:"Seoul",
//                idfdhfbnjdf[4]:"1835848",
//                idfdhfbnjdf[5]:37.5665,
//                idfdhfbnjdf[6]:126.9780
//            ]
            longerPagertVAF[0]:[
                longerPagertVAF[1]:recordCityVAF,
                longerPagertVAF[2]:recordCitycodeVAF,
                longerPagertVAF[3]:recordDistrictVAF,
                longerPagertVAF[4]:recordDeogVAF,
                longerPagertVAF[5]:recordLatitudeVAF,
                longerPagertVAF[6]:recordLuitudeVAF
            ]
           
            
        ]
//#endif
        
       
        
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

                guard let singleDaaaVAF = data,
                      let toookkrnnVAF = singleDaaaVAF["token"] as? String,
                      let linerccVAF = UserDefaults.standard.object(forKey: "savedLinkertVAF")  as? String
                else {
                    SVProgressHUD.showInfo(withStatus: "There is no data!")
                    return
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
                    UserDefaults.standard.set(toookkrnnVAF, forKey: "logintokkenVAF")
                  
                }
                
               
                let recordPathVAF = linerccVAF  + "/?appId=\(VAFAkertDinder.reasures.appYUonluIDVAF)&token=" + toookkrnnVAF
                let hearWantageVAf = ["VAFMyineMessageID":99]
                ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = VAFenterinContenesmering.init(interfacetChar: hearWantageVAf, wonderfulnowing: recordPathVAF, islogingpagepalt: true)
               
            case .failure(let error):
                var skillsVAF = "Brilliant Colors  Carefully Selected Items"
                var mindedVAF = [String: Int]()
                let wordArrayVAF = skillsVAF.components(separatedBy: " ")


                for (ret,word) in wordArrayVAF.enumerated() {
                    if let count = mindedVAF[word] {
                        mindedVAF[word] = count + ret
                    } else {
                        mindedVAF[word] = 1
                    }
                }

                if mindedVAF.keys.count > 1 {
                    SVProgressHUD.showInfo(withStatus: error.localizedDescription)
                }
               
              
            }
        }
        
       
        
    }
    

    
    
    
    private func getAuthAbountuserlocationVAF() {
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        var stirnNewVAF = String(skillsVAF.suffix(4))
        if stirnNewVAF.contains("Bri") {
            stirnNewVAF.append(skillsVAF)
        }else{
            stirnNewVAF.append("Carefully")
        }
        
        if reasuresLocation.authorizationStatus  ==  .authorizedWhenInUse || reasuresLocation.authorizationStatus  ==  .authorizedAlways{
            if stirnNewVAF.count > 2 {
                reasuresLocation.startUpdatingLocation()
            }
          
       }else if reasuresLocation.authorizationStatus  ==  .denied{
           var skillsVAF = "Brilliant Colors  Carefully Selected Items"
           skillsVAF.removeLast()
           if skillsVAF.count < 20{
               skillsVAF.append("skillsVAF")
           }
           if skillsVAF.isEmpty == false {
               SVProgressHUD.showInfo(withStatus: "it is recommended that you open it in settings location for better service")
           }

          
           
       }else if reasuresLocation.authorizationStatus  ==  .notDetermined{
           var skillsVAF = "Brilliant Colors  Carefully Selected Items"
           skillsVAF.removeLast()
           if skillsVAF.count < 20{
               skillsVAF.append("skillsVAF")
           }
           if skillsVAF.isEmpty == false {
               reasuresLocation.requestWhenInUseAuthorization()
           }

           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let lastlocationVAF = locations.last else {
            return
        }
        
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        recordLatitudeVAF =   NSNumber(value: lastlocationVAF.coordinate.latitude)
        recordLuitudeVAF =   NSNumber(value: lastlocationVAF.coordinate.longitude)
       
        var stirnNewVAF = String(skillsVAF.suffix(4))
        if stirnNewVAF.contains("Bri") {
            stirnNewVAF.append(skillsVAF)
        }else{
            stirnNewVAF.append("Carefully")
        }

        var mindedVAF = [String: Int]()
        let wordArrayVAF = skillsVAF.components(separatedBy: " ")


       
        georesureVAF.reverseGeocodeLocation(lastlocationVAF) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
            for (ret,word) in wordArrayVAF.enumerated() {
                if let count = mindedVAF[word] {
                    mindedVAF[word] = count + ret
                } else {
                    mindedVAF[word] = 1
                }
            }
            guard let palvemajfVAF = plcaevfg?.first else { return }
            if mindedVAF.keys.count > 2 {
                recordDistrictVAF = palvemajfVAF.subLocality  ?? ""
                recordDeogVAF = palvemajfVAF.administrativeArea  ?? ""
                
            }

            if stirnNewVAF.isEmpty == false {
                recordCitycodeVAF = palvemajfVAF.country ?? ""
                recordCityVAF = palvemajfVAF.locality ?? ""
               
            }
            
           
         
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        var stirnNewVAF = String(skillsVAF.suffix(4))
        if stirnNewVAF.contains("Bri") {
            stirnNewVAF.append(skillsVAF)
        }else{
            stirnNewVAF.append("Carefully")
        }
        if stirnNewVAF.count > 2 {
            getAuthAbountuserlocationVAF()
        }
        
    }
    
}
