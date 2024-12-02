//
//  VAFenterinContenesmering.swift
//  VinAdfrCloik
//
//  Created by mumu on 2024/12/2.
//

import UIKit
import SVProgressHUD
import WebKit
import AFNetworking
import SwiftyStoreKit
import YTXOperators
class VAFenterinContenesmering: UIViewController , WKNavigationDelegate, WKUIDelegate{
    private var sourvceCABlogpage = false
    private var loaading_URURRolCSB:String
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
    var minerXInButtonr:WKWebView?
  
    init(loaading_URURRolCSBba:String,sourvceCABlogpageba:Bool) {
        loaading_URURRolCSB = loaading_URURRolCSBba
        
        sourvceCABlogpage = sourvceCABlogpageba
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
     
        minerXInButtonr?.configuration.userContentController.add(self, name: "Pay")
        minerXInButtonr?.configuration.userContentController.add(self, name: "Close")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
      
        minerXInButtonr?.configuration.userContentController.removeAllScriptMessageHandlers()
       
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
        
        
        okayVAFlogin.isHidden = !sourvceCABlogpage
         
         
       
      
        minerXInButtonr = WKWebView.init(frame: UIScreen.main.bounds, configuration: VAFsetingconfire)
     
        
        minerXInButtonr?.isHidden = true
        minerXInButtonr?.translatesAutoresizingMaskIntoConstraints = false
        minerXInButtonr?.scrollView.alwaysBounceVertical = false
        
        minerXInButtonr?.scrollView.contentInsetAdjustmentBehavior = .never
        minerXInButtonr?.navigationDelegate = self
        minerXInButtonr?.uiDelegate = self
        minerXInButtonr?.allowsBackForwardNavigationGestures = true
        
        if let nesrt = URL.init(string: loaading_URURRolCSB) {
            minerXInButtonr?.load(NSURLRequest.init(url:nesrt) as URLRequest)
        }
        
        self.view.addSubview(minerXInButtonr!)
     
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
      
        minerXInButtonr?.isHidden = false
        
        SVProgressHUD.dismiss()
        if sourvceCABlogpage == true {
            SVProgressHUD.showSuccess(withStatus: "Log in successful!")
            
        }
       
#if DEBUG
        let pureWaterCSBA = "/api/device/save"
         let parmterCSBA: [String: Any] = [
            "appVersion": "1.1.0",
             "channel":"APPSTORE",
            "osType":UIDevice.current.systemName,
             "osVersion":UIDevice.current.systemVersion,
             "deviceType" : "iPhone",
            "deviceNo" :CSBFetcherAll.Hammer.uuuidonlyCSBonce,
            "pushToken" :CSBFetcherAll.Hammer.pushpushTkkTken,
         
         ]
        #else
        let pureWaterCSBA = "/tight/munity/urling"
         let parmterCSBA: [String: Any] = [
            "ecome": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
             "vicinity":"APPSTORE",
            "ersonalize":UIDevice.current.systemName,
             "asting":UIDevice.current.systemVersion,
             "ournament" : "iPhone",
            "rces" :CSBFetcherAll.Hammer.uuuidonlyCSBonce,
            "forman" :CSBFetcherAll.Hammer.pushpushTkkTken,
         
         ]
#endif
        CSBFetcherAll.Hammer.notokaybengReCSBNetsk( pureWaterCSBA, csbaPPOara: parmterCSBA)
       
    }
    
}


extension VAFenterinContenesmering:WKScriptMessageHandler{
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
        var mayyby = "Pay8977"
        mayyby = String(mayyby.prefix(3))
        
        var cobyby = "Close8977"
        cobyby = String(cobyby.prefix(5))
        
        
        if message.name == mayyby, let meaageCoingID = message.body as? String {
            
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
                   
                    let transactionId = psPurch.transaction.transactionIdentifier ?? "Unknown Transaction ID"
                
                    guard let ticketData = SwiftyStoreKit.localReceiptData else {
                        SVProgressHUD.showInfo(withStatus: "No have receipt")
                        
                       
                        return
                      }
                    
                    let encryptData = ticketData.base64EncodedString()
                    
                    var key0csb = "payload8977"
                    key0csb = String(key0csb.prefix(7))
                    
                    
                    var key1csb = "transactionId8977"
                    key1csb = String(key1csb.prefix(13))
                    
                    var key2csb = "type8977"
                    key2csb = String(key2csb.prefix(4))
                    
                    
                    var key3csb = "direct8977"
                    key3csb = String(key3csb.prefix(6))
                    
                    
                  
                    let parmterCSBA: [String: Any] = [
                        key0csb:encryptData,
                        key1csb:transactionId,
                        key2csb:key3csb
                    ]
                    
                    
                
                    CSBFetcherAll.Hammer.notokaybengReCSBNetsk( "/api/ios/v2/pay", csbaPPOara: parmterCSBA) { result in
                        
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
            
        }else if message.name == cobyby {
          
            UserDefaults.standard.set(nil, forKey: "CSBATooojkeng")// 清除本地token
            
            let mainghuury = VAFLaungchngLogEmailgesmering.init()
            let navigatgation = UINavigationController.init(rootViewController: mainghuury)
            navigatgation.navigationBar.isHidden = true
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = navigatgation
        }
    }
    
   
    
   
}



class CSBFetcherAll{//VAFAkertDinder
    static let  Hammer = CSBFetcherAll()
    
    var pushpushTkkTken:String = ""
    private let phonemonitar = YTXNetUtils.init()
    var AllOtherNameApppCsb:[String]{
        var apppnameslist = [String]()
        
        if let userld = URL.init(string: "wechat://"), UIApplication.shared.canOpenURL(userld) {
            apppnameslist.append("weiChat")
        }
        if let userld = URL.init(string: "alipay://"), UIApplication.shared.canOpenURL(userld) {
            apppnameslist.append("Aliapp")
        }
        if let userld = URL.init(string: "WhatsApp://"), UIApplication.shared.canOpenURL(userld) {
            apppnameslist.append("WhatsApp")
        }
        
        if let userld = URL.init(string: "Instagram://"), UIApplication.shared.canOpenURL(userld) {
            apppnameslist.append("Instagram")
        }
        if let userld = URL.init(string: "Facebook://"), UIApplication.shared.canOpenURL(userld) {
            apppnameslist.append("Facebook")
        }
        if let userld = URL.init(string: "TikTok://"), UIApplication.shared.canOpenURL(userld) {
            apppnameslist.append("TikTok")
        }
        
        
        if let userld = URL.init(string: "twitter://"), UIApplication.shared.canOpenURL(userld) {
            apppnameslist.append("twitter")
        }
        
        if let userld = URL.init(string: "qq://"), UIApplication.shared.canOpenURL(userld) {
            apppnameslist.append("qq")
        }
        
        return apppnameslist
    }
    
    var networkOperatorCsb:String{
        return phonemonitar.getCurrentCarrierName()
    }
    
    var isSimCardInsertedCsb:Int {
        return phonemonitar.simSupportedIsOK() == true ? 1 : 0
    }
     
    var allKeyBoardlaunggesCSB:[String]{
        var launguagecodeslist = [String]()
        for textInputMode in UITextInputMode.activeInputModes {
            if let language = textInputMode.primaryLanguage {
                print(language)
                launguagecodeslist.append(language)
            }
        }
        return launguagecodeslist
    }
    var alllaunggesCSB:[String]{
        var launguagecodeslist = [String]()
        let allLocaleIdentifiers = NSLocale.preferredLanguages
        for localeIdentifier in allLocaleIdentifiers {
            let locale = NSLocale(localeIdentifier: localeIdentifier)
            
            if let languageCode = locale.object(forKey: .languageCode) as? String{
                print(languageCode)
                launguagecodeslist.append(languageCode)
            }
        }
        
        return launguagecodeslist
    }
    
    var uuuidonlyCSBonce:String{
        if UserDefaults.standard.object(forKey: "APPCurSAboIDF") == nil {
            let idse = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
            UserDefaults.standard.set(idse, forKey: "APPCurSAboIDF")
            return idse
        }else{
            return UserDefaults.standard.object(forKey: "APPCurSAboIDF") as? String ?? UUID().uuidString
        }
    }
#if DEBUG
    let appidTOShaCSB = "11111111"
    #else
    let appidTOShaCSB = "87980991"
#endif

    func notokaybengReCSBNetsk(_ detailurl:String,csbaPPOara:[String: Any], okayuiCSBA: @escaping (Result<[String : Any]?, Error>) -> Void = { _ in } ) {

#if DEBUG
        let foreUrletKinCAB = "https://api.cphub.link"
    #else
        let foreUrletKinCAB = "https://api.sfse.link"
#endif
       

        guard let longUserkgon = URL(string: foreUrletKinCAB + detailurl) else {
            return
        }

        let headfertgh: Dictionary<String,String> = [
            "appId": appidTOShaCSB,
            "appVersion":Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1.0",
            "deviceNo":uuuidonlyCSBonce,
            "language":Locale.current.languageCode ?? "",
            "loginToken":UserDefaults.standard.object(forKey: "CSBATooojkeng") as? String ?? ""
        ]
        
        let manager = AFHTTPSessionManager()
        manager.post(foreUrletKinCAB + detailurl, parameters: csbaPPOara, headers: headfertgh, progress: nil) { (task, responseObject) in
            if let djyui = responseObject as? [String: Any] {
                   print("Response: \(djyui)")
             
                   
                    if let codeCABSA = djyui["code"] as? String, codeCABSA == "0000" {
                       
                        if let dataCSBA = djyui["result"] as? [String: Any] {
                            
                            okayuiCSBA(.success(dataCSBA))
                        }else{
                            okayuiCSBA(.success(nil))
                        }

                    } else {
                        let codeCSBA = djyui["message"] as? String
                        let efffor = NSError(domain: "HTTPError", code: 0, userInfo: [NSLocalizedDescriptionKey: codeCSBA])
                        okayuiCSBA(.failure(efffor))
                    }
                          
                }else{
                  
                    let efffor = NSError(domain: "HTTPError", code: 0, userInfo: [NSLocalizedDescriptionKey: "Data is error"])
                    okayuiCSBA(.failure(efffor))
                }
               
        } failure: { (task, error) in
            
            okayuiCSBA(.failure(error))
        }


        
    }
    
    
    func checkkingAppIFConnectVPPPNCABA()->Bool{
       
        
        var muwuk = "__SCOPED__89077"
        muwuk = String(muwuk.prefix(10))
        
        
        var muwuk1 = "tap89077"
        muwuk1 = String(muwuk1.prefix(3))
        
        
        
        var muwuk2 = "tun89077"
        muwuk2 = String(muwuk2.prefix(3))
        
        var muwuk3 = "ipsec89077"
        muwuk3 = String(muwuk3.prefix(5))
        
        
        var muwuk4 = "ppp89077"
        muwuk4 = String(muwuk4.prefix(3))
        
        
       var nowingVON = false
       
       if let dict = CFNetworkCopySystemProxySettings()?.takeRetainedValue() as? [String : Any],
           let scopedDict = dict[muwuk] as? [String : Any] {
             
           let keys = scopedDict.keys.map { $0 as String }
             
           for key in keys {
               if key.contains(muwuk1) || key.contains(muwuk2) || key.contains(muwuk3) || key.contains(muwuk4) {
                   
                   nowingVON = true
                   break
                  
               }
           }
       }
       return nowingVON

     
      
   }
   
}
