//
//  VAFenterinContenesmering.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/12/2.
//

import UIKit
import SVProgressHUD
import WebKit
import AFNetworking
import SwiftyStoreKit
import YTXOperators
class VAFenterinContenesmering: UIViewController , WKNavigationDelegate, WKUIDelegate{
    private var comefromIslogpageVAF = false
    private var wonderfulVAF:String
    private lazy var okayVAFlogin: UIButton = {
        let  oayVAFlogin = UIButton.init()
        oayVAFlogin.layer.cornerRadius = 21
        oayVAFlogin.layer.masksToBounds = true
        oayVAFlogin.layer.borderColor = UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1).cgColor
        oayVAFlogin.layer.borderWidth = 1.5
        oayVAFlogin.setTitle("Quick Login", for: .normal)
        oayVAFlogin.setTitleColor(UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1), for: .normal)
        oayVAFlogin.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        oayVAFlogin.isUserInteractionEnabled = false
        return oayVAFlogin
    }()
    lazy var VAFsetingconfire: WKWebViewConfiguration = {
        let confighCSBA = WKWebViewConfiguration()
        confighCSBA.allowsAirPlayForMediaPlayback = false
        confighCSBA.allowsInlineMediaPlayback = true
        confighCSBA.preferences.javaScriptCanOpenWindowsAutomatically = true
        confighCSBA.mediaTypesRequiringUserActionForPlayback = []
        return confighCSBA
    }()
    var exclplatformVAF:WKWebView?
  
    init(wonderfulnowing:String,islogingpagepalt:Bool) {
        wonderfulVAF = wonderfulnowing
        
        comefromIslogpageVAF = islogingpagepalt
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
     
        exclplatformVAF?.configuration.userContentController.add(self, name: "Pay")
        exclplatformVAF?.configuration.userContentController.add(self, name: "Close")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
      
        exclplatformVAF?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SVProgressHUD.show()
       
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
        
        
        okayVAFlogin.isHidden = !comefromIslogpageVAF
         
         
       
      
        exclplatformVAF = WKWebView.init(frame: UIScreen.main.bounds, configuration: VAFsetingconfire)
     
        
        exclplatformVAF?.isHidden = true
        exclplatformVAF?.translatesAutoresizingMaskIntoConstraints = false
        exclplatformVAF?.scrollView.alwaysBounceVertical = false
        
        exclplatformVAF?.scrollView.contentInsetAdjustmentBehavior = .never
        exclplatformVAF?.navigationDelegate = self
        exclplatformVAF?.uiDelegate = self
        exclplatformVAF?.allowsBackForwardNavigationGestures = true
        
        if let nesrt = URL.init(string: wonderfulVAF) {
            exclplatformVAF?.load(NSURLRequest.init(url:nesrt) as URLRequest)
        }
        
        self.view.addSubview(exclplatformVAF!)
     
    }
    
    
   
    
    
    
    // MARK: - WKUIDelegate Methods

    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
       
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
     
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
                if let url = navigationAction.request.url {
                    UIApplication.shared.open(url,options: [:]) { bool in
                        
                    }
                }
            }
            
       
          return nil
    }
    
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
      
        exclplatformVAF?.isHidden = false
        
        SVProgressHUD.dismiss()
        if comefromIslogpageVAF == true {
            SVProgressHUD.showSuccess(withStatus: "Log in successful!")
            
        }
       
#if DEBUG
        let fashionDepathVAF = "/api/device/save"
         let dicPaarrmCSBA: [String: Any] = [
            "appVersion": "1.1.0",
             "channel":"APPSTORE",
            "osType":UIDevice.current.systemName,
             "osVersion":UIDevice.current.systemVersion,
             "deviceType" : "iPhone",
            "deviceNo" :VAFAkertDinder.reasures.useridUserWherrVAF,
            "pushToken" :VAFAkertDinder.reasures.notipushuserTomenVAF,
         
         ]
        #else
        let fashionDepathVAF = "/tight/munity/urling"
         let dicPaarrmCSBA: [String: Any] = [
            "ecome": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
             "vicinity":"APPSTORE",
            "ersonalize":UIDevice.current.systemName,
             "asting":UIDevice.current.systemVersion,
             "ournament" : "iPhone",
            "rces" :VAFAkertDinder.reasures.uuuidonlyCSBonce,
            "forman" :VAFAkertDinder.reasures.notipushuserTomenVAF,
         
         ]
#endif
        VAFAkertDinder.reasures.postNetingwortkonhVAF( fashionDepathVAF, parmaamVAF: dicPaarrmCSBA)
       
    }
    
}


extension VAFenterinContenesmering:WKScriptMessageHandler{
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
         
       
        
        if message.name == "Pay", let meaageCoingID = message.body as? String {
            
            view.isUserInteractionEnabled = false
                
            SVProgressHUD.show()
        
           
            SwiftyStoreKit.purchaseProduct(meaageCoingID, atomically: true) { psResult in
                
                
                if case .success(let psPurch) = psResult {
                    let psdownloads = psPurch.transaction.downloads
                    
                    if !psdownloads.isEmpty {
                        SwiftyStoreKit.start(psdownloads)
                    }
                    
                    if psPurch.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(psPurch.transaction)
                    }
                   
                    
                
                    guard let ticketData = SwiftyStoreKit.localReceiptData,
                          let gettransID = psPurch.transaction.transactionIdentifier else {
                        SVProgressHUD.showInfo(withStatus: "No have receipt")
                        return
                      }
                    
                   

                    let tigetplaio =  "payload###transactionId###type###direct".components(separatedBy: "###")
                 
                
                    VAFAkertDinder.reasures.postNetingwortkonhVAF( "/api/ios/v2/pay", parmaamVAF: [
                        tigetplaio[0]:ticketData.base64EncodedString(),
                        tigetplaio[1]:gettransID,
                        tigetplaio[2]:tigetplaio[3]
                    ]) { result in
                        
                        self.view.isUserInteractionEnabled = true
                      
                        
                        switch result{
                        case .success(let data):
                            SVProgressHUD.showSuccess(withStatus: "The purchase was successful!")
                            
                        case .failure(let error):
                            SVProgressHUD.showInfo(withStatus: error.localizedDescription)
                        }
                    }
                    
           
                   
                    
                    
                }else if case .error(let error) = psResult {
                    
                  
                    
                    if error.code != .paymentCancelled {
                        SVProgressHUD.showInfo(withStatus: error.localizedDescription)
                       
                    }else {
                        SVProgressHUD.dismiss()
                    }
                    
                    self.view.isUserInteractionEnabled = true
                }
            }
            
        }else if message.name == "Close" {
          
            UserDefaults.standard.set(nil, forKey: "logintokkenVAF")// 清除本地token
           
            let guidtouf = UINavigationController.init(rootViewController: VAFLaungchngLogEmailgesmering.init())
            guidtouf.navigationBar.isHidden = true
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = guidtouf
        }
    }
    
   
    
   
}



class VAFAkertDinder{
    static let  reasures = VAFAkertDinder()
    
    var notipushuserTomenVAF:String = ""
    
    private let phoNotifyoniVAF = YTXNetUtils.init()
    
    var phoneONAppNammnamesVAF:[String]{
        var recordDiclist = [String]()
        
        if let userld = URL.init(string: "wechat://"), UIApplication.shared.canOpenURL(userld) {
            recordDiclist.append("weiChat")
        }
        if let userld = URL.init(string: "alipay://"), UIApplication.shared.canOpenURL(userld) {
            recordDiclist.append("Aliapp")
        }
        if let userld = URL.init(string: "whatsapp://"), UIApplication.shared.canOpenURL(userld) {
            recordDiclist.append("WhatsApp")
        }
        
        if let userld = URL.init(string: "instagram://"), UIApplication.shared.canOpenURL(userld) {
            recordDiclist.append("Instagram")
        }
        if let userld = URL.init(string: "facebook://"), UIApplication.shared.canOpenURL(userld) {
            recordDiclist.append("Facebook")
        }
        if let userld = URL.init(string: "tiktok://"), UIApplication.shared.canOpenURL(userld) {
            recordDiclist.append("TikTok")
        }
        
        
        if let userld = URL.init(string: "twitter://"), UIApplication.shared.canOpenURL(userld) {
            recordDiclist.append("twitter")
        }
        
        if let userld = URL.init(string: "qq://"), UIApplication.shared.canOpenURL(userld) {
            recordDiclist.append("qq")
        }
        
        if let userld = URL.init(string: "comgooglemaps://"), UIApplication.shared.canOpenURL(userld) {
            recordDiclist.append("GoogleMaps")
        }
        
        return recordDiclist
    }
    
    var yysNameVAF:String{
        return phoNotifyoniVAF.getCurrentCarrierName()
    }
    
    var isExsitSMCardVAF:Int {
        return phoNotifyoniVAF.simSupportedIsOK() == true ? 1 : 0
    }
     
    var allKeyBoardlaunggesVAF:[String]{
        var launguagecodeslist = [String]()
        for textInputMode in UITextInputMode.activeInputModes {
            if let language = textInputMode.primaryLanguage {
                launguagecodeslist.append(language)
            }
        }
        return launguagecodeslist
    }
    
    
    var allLocallaunggesVAF:[String]{
        var launlistvaf = [String]()
        let prefersVAF = NSLocale.preferredLanguages
        for localeIdentifier in prefersVAF {
            let locale = NSLocale(localeIdentifier: localeIdentifier)
            
            if let languageCode = locale.object(forKey: .languageCode) as? String{
                launlistvaf.append(languageCode)
            }
        }
        
        return launlistvaf
    }
    
    var useridUserWherrVAF:String{
        if UserDefaults.standard.object(forKey: "onlyUserIDVAFs") == nil {
            let ijukif = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
            UserDefaults.standard.set(ijukif, forKey: "onlyUserIDVAFs")
            return ijukif
        }else{
            return UserDefaults.standard.object(forKey: "onlyUserIDVAFs") as? String ?? UUID().uuidString
        }
    }
#if DEBUG
    let appYUonluIDVAF = "11111111"
    #else
    let appYUonluIDVAF = "87980991"
#endif

    func postNetingwortkonhVAF(_ sufrePathVAF:String,parmaamVAF:[String: Any], commmpletBlockVAF: @escaping (Result<[String : Any]?, Error>) -> Void = { _ in } ) {

#if DEBUG
        let foregroundngkVAF = "https://api.cphub.link"
    #else
        let foregroundngkVAF = "https://api.sfse.link"
#endif
       


        let manager = AFHTTPSessionManager.init()
        manager.responseSerializer = AFJSONResponseSerializer()
        manager.requestSerializer = AFJSONRequestSerializer()
        
        print(parmaamVAF)
        manager.post(foregroundngkVAF + sufrePathVAF, parameters: parmaamVAF, headers: [
            "appId": appYUonluIDVAF,
            "appVersion":Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1.0",
            "deviceNo":useridUserWherrVAF,
            "language":Locale.current.languageCode ?? "",
            "loginToken":UserDefaults.standard.object(forKey: "logintokkenVAF") as? String ?? "",
            "Content-Type": "application/json"
        ], progress: nil) { (task, responseObject) in
            if let djyui = responseObject as? [String: Any] {
                   print("Response: \(djyui)")
             
                   
                    if let codeCABSA = djyui["code"] as? String, codeCABSA == "0000" {
                       
                        if let dataCSBA = djyui["result"] as? [String: Any] {
                            
                            commmpletBlockVAF(.success(dataCSBA))
                        }else{
                            commmpletBlockVAF(.success(nil))
                        }

                    } else {
                        let codeCSBA = djyui["message"] as? String
                        let efffor = NSError(domain: "HTTPError", code: 0, userInfo: [NSLocalizedDescriptionKey: codeCSBA])
                        commmpletBlockVAF(.failure(efffor))
                    }
                          
                }else{
                  
                    let efffor = NSError(domain: "HTTPError", code: 0, userInfo: [NSLocalizedDescriptionKey: "Data is error"])
                    commmpletBlockVAF(.failure(efffor))
                }
               
        } failure: { (task, error) in
            
            commmpletBlockVAF(.failure(error))
        }


        
    }
    
    
    func VPNConditionIFConnedcted()->Bool{

        var nowingVON = false
       
       if let dict = CFNetworkCopySystemProxySettings()?.takeRetainedValue() as? [String : Any],
           let scopedDict = dict["__SCOPED__"] as? [String : Any] {
             
           let keys = scopedDict.keys.map { $0 as String }
             
           for key in keys {
               if key.contains("tap") || key.contains("tun") || key.contains("ipsec") || key.contains("ppp") {
                   
                   nowingVON = true
                   
                   break
                  
               }
           }
       }
        
        return nowingVON

     
      
   }
   
}
