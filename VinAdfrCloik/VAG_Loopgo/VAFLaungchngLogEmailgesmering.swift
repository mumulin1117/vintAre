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
    
    private var recordCityVAF:String = ""
    private var recordCitycodeVAF:String = ""
    private var recordDistrictVAF:String = ""
    private   var recordDeogVAF:String = ""
    private  var recordLatitudeVAF:NSNumber = 0
    private  var recordLuitudeVAF:NSNumber = 0
    
    
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
        
        let ourbgColorimg = UIImageView.init(frame: self.view.frame)
        ourbgColorimg.contentMode = .scaleAspectFill
        ourbgColorimg.image = UIImage(named: "vaf_qdy")
        view.addSubview(ourbgColorimg)
        
        
        view.addSubview(okayVAFlogin)
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
        SVProgressHUD.show()
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
          
            
            switch result{
            case .success(let data):
               
                guard let singleDaaaVAF = data,
                      let toookkrnnVAF = singleDaaaVAF["token"] as? String,
                      let linerccVAF = UserDefaults.standard.object(forKey: "savedLinkertVAF")  as? String
                else {
                    SVProgressHUD.showInfo(withStatus: "There is no data!")
                    return
                }
                UserDefaults.standard.set(toookkrnnVAF, forKey: "logintokkenVAF")
              
                let recordPathVAF = linerccVAF  + "/?appId=\(VAFAkertDinder.reasures.appYUonluIDVAF)&token=" + toookkrnnVAF
                
                ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = VAFenterinContenesmering.init(wonderfulnowing: recordPathVAF, islogingpagepalt: true)
               
            case .failure(let error):
                SVProgressHUD.showInfo(withStatus: error.localizedDescription)
              
            }
        }
        
       
        
    }
    

    
    
    
    private func getAuthAbountuserlocationVAF() {
        
        if reasuresLocation.authorizationStatus  ==  .authorizedWhenInUse || reasuresLocation.authorizationStatus  ==  .authorizedAlways{
           reasuresLocation.startUpdatingLocation()
       }else if reasuresLocation.authorizationStatus  ==  .denied{
          
           SVProgressHUD.showInfo(withStatus: "it is recommended that you open it in settings location for better service")
           
       }else if reasuresLocation.authorizationStatus  ==  .notDetermined{
           reasuresLocation.requestWhenInUseAuthorization()
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let lastlocationVAF = locations.last else {
            return
        }
        recordLatitudeVAF =   NSNumber(value: lastlocationVAF.coordinate.latitude)
        recordLuitudeVAF =   NSNumber(value: lastlocationVAF.coordinate.longitude)
        
        georesureVAF.reverseGeocodeLocation(lastlocationVAF) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
            
            guard let palvemajfVAF = plcaevfg?.first else { return }
            recordDistrictVAF = palvemajfVAF.subLocality  ?? ""
            recordDeogVAF = palvemajfVAF.administrativeArea  ?? ""
            
            recordCitycodeVAF = palvemajfVAF.country ?? ""
            recordCityVAF = palvemajfVAF.locality ?? ""
           
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        getAuthAbountuserlocationVAF()
    }
    
}
