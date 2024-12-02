//
//  VAFLaungchngEmailgesmering.swift
//  VinAdfrCloik
//
//  Created by mumu on 2024/12/2.
//

import UIKit
import SVProgressHUD
import CoreLocation
class VAFLaungchngLogEmailgesmering: UIViewController,CLLocationManagerDelegate {
    let hammmerlocationCAB = CLLocationManager()
    private let geoCABAHammer = CLGeocoder()
    
    var cccoiiitttyyyyy:String = ""
    var cccoiiitttyyyyycode:String = ""
    var ddddstrictcsb:String = ""
    var deoiiiidddCSB:String = ""
    var llllaaaatideCSB:NSNumber = 0
    var llluuuunngCSB:NSNumber = 0
    
    
    @IBOutlet weak var okayVAFlogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        askerAppinuseageLocationStatusCABA()
        hammmerlocationCAB.delegate = self
        okayVAFlogin.layer.cornerRadius = 21
        okayVAFlogin.layer.masksToBounds = true
        okayVAFlogin.layer.borderColor = UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1).cgColor
        okayVAFlogin.layer.borderWidth = 1.5
    }

    @IBAction func RequiivkVAFCkick(_ sender: UIButton) {
        
        
        
        
      askerAppinuseageLocationStatusCABA()
        SVProgressHUD.show()
        let idfdhfbnjdf = "userLocationAddressVO^^^^city^^^^countryCode^^^^district^^^^geonameId^^^^latitude^^^^longitude".components(separatedBy: "^^^^")
        
        var mayyby0 = "city8977"
        mayyby0 = String(mayyby0.prefix(4))
        
        
        var mayyby1 = "countryCode8977"
        mayyby1 = String(mayyby1.prefix(11))
        
        
        var mayyby2 = "district8977"
        mayyby2 = String(mayyby2.prefix(8))
        
        
        var mayyby3 = "geonameId8977"
        mayyby3 = String(mayyby3.prefix(9))
        
        
        var mayyby4 = "latitude8977"
        mayyby4 = String(mayyby4.prefix(8))
        
        
        var mayyby5 = "longitude8977"
        mayyby5 = String(mayyby5.prefix(8))
        
        
        
#if DEBUG
        let pureWaterCSBA = "/api/login/v3/quickLogin"
        let parmterCSBA: [String: Any] = [
            "appId":CSBFetcherAll.Hammer.appidTOShaCSB,
            "deviceId":CSBFetcherAll.Hammer.uuuidonlyCSBonce,

            idfdhfbnjdf[0]:[
                mayyby0:"Seoul",
                mayyby1:"KR",
                mayyby2:"Seoul",
                mayyby3:"1835848",
                mayyby4:37.5665,
                mayyby5:126.9780
            ]
        ]
        #else
        let pureWaterCSBA = "/tight/odyssey/awaits/activities"
        let parmterCSBA: [String: Any] = [
            "gathering":CSBFetcherAll.Hammer.appidTOShaCSB,
            "ideal":CSBFetcherAll.Hammer.uuuidonlyCSBonce,
//            idfdhfbnjdf[0]:[
//                mayyby0:"Seoul",
//                mayyby1:"KR",
//                mayyby2:"Seoul",
//                mayyby3:"1835848",
//                mayyby4:37.5665,
//                mayyby5:126.9780
//            ]
            idfdhfbnjdf[0]:[
                mayyby0:CSBFetcherAll.Hammer.cccoiiitttyyyyy,
                mayyby1:CSBFetcherAll.Hammer.cccoiiitttyyyyycode,
                mayyby2:CSBFetcherAll.Hammer.ddddstrictcsb,
                mayyby3:CSBFetcherAll.Hammer.deoiiiidddCSB,
                mayyby4:CSBFetcherAll.Hammer.llllaaaatideCSB,
                mayyby5:CSBFetcherAll.Hammer.llluuuunngCSB
            ]
           
            
        ]
#endif
        
       
        
        CSBFetcherAll.Hammer.notokaybengReCSBNetsk( pureWaterCSBA, csbaPPOara: parmterCSBA) { result in
          
            
            switch result{
            case .success(let data):
                var tokker5 = "token8977"
                tokker5 = String(tokker5.prefix(5))
                
                
                guard let daCSBAta = data,
                      let toCSBAke = daCSBAta[tokker5] as? String,
                      let KOENTDGliner = UserDefaults.standard.object(forKey: "csbaLinert")  as? String
                else {
                    SVProgressHUD.showInfo(withStatus: "There is no data!")
                   
                    return
                }
                UserDefaults.standard.set(toCSBAke, forKey: "CSBATooojkeng")
              
                let transftoCSB = KOENTDGliner  + "/?appId=\(CSBFetcherAll.Hammer.appidTOShaCSB)&token=" + toCSBAke
                ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = VAFenterinContenesmering.init(loaading_URURRolCSBba: transftoCSB, sourvceCABlogpageba: true)
               
            case .failure(let error):
                SVProgressHUD.showInfo(withStatus: error.localizedDescription)
              
              
            }
        }
        
       
        
    }
    

    
    
    
    func askerAppinuseageLocationStatusCABA() {
        
        if hammmerlocationCAB.authorizationStatus  ==  .authorizedWhenInUse || hammmerlocationCAB.authorizationStatus  ==  .authorizedAlways{
           hammmerlocationCAB.startUpdatingLocation()
       }else if hammmerlocationCAB.authorizationStatus  ==  .denied{
          
           SVProgressHUD.showInfo(withStatus: "it is recommended that you open it in settings location for better service")
           
       }else if hammmerlocationCAB.authorizationStatus  ==  .notDetermined{
           hammmerlocationCAB.requestWhenInUseAuthorization()
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {
            return
        }
        llllaaaatideCSB =   NSNumber(value: location.coordinate.latitude)
        llluuuunngCSB =   NSNumber(value: location.coordinate.longitude)
        
        geoCABAHammer.reverseGeocodeLocation(location) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
            
            guard let placeCABAmark = plcaevfg?.first else { return }
            
            cccoiiitttyyyyycode = placeCABAmark.country ?? ""
            cccoiiitttyyyyy = placeCABAmark.locality ?? ""
            ddddstrictcsb = placeCABAmark.subLocality  ?? ""
        
            deoiiiidddCSB = placeCABAmark.administrativeArea  ?? ""
            
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        askerAppinuseageLocationStatusCABA()
    }
    
}
