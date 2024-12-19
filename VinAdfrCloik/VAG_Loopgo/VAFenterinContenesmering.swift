//
//  VAFenterinContenesmering.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/12/2.
//

import UIKit
import SVProgressHUD
@preconcurrency import WebKit
import AFNetworking
import SwiftyStoreKit

import Security

class VAFenterinContenesmering: UIViewController , WKNavigationDelegate, WKUIDelegate{
    
    private var comefromIslogpageVAF = false
    private var heooldrome = false
    private var kissdVibe :VAFPOpUiView?
    private var riendly:Double = 52.6
    private var eativity = "[CharacterInt]###VAFPOpUiView###VAFContenReportTernaler".components(separatedBy: "###")
    var interfacetChar: Dictionary<String,Int> =  Dictionary<String,Int>()

    
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
        confighCSBA.preferences.javaScriptCanOpenWindowsAutomatically = true
        confighCSBA.preferences.javaScriptCanOpenWindowsAutomatically = true
        confighCSBA.preferences.javaScriptCanOpenWindowsAutomatically = true
        confighCSBA.preferences.javaScriptCanOpenWindowsAutomatically = true
        return confighCSBA
    }()
    var exclplatformVAF:WKWebView?
  
    init(interfacetChar: Dictionary<String,Int>,wonderfulnowing:String,islogingpagepalt:Bool) {
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
        okayVAFlogin.snp.makeConstraints { make in
            make.height.equalTo(42)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(40.xxxxxxVAF)
            make.width.equalTo(180)
        }
        
        
        okayVAFlogin.isHidden = !comefromIslogpageVAF
         
         
       
      
        exclplatformVAF = WKWebView.init(frame: UIScreen.main.bounds, configuration: VAFsetingconfire)
     
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
            exclplatformVAF?.isHidden = true
            exclplatformVAF?.translatesAutoresizingMaskIntoConstraints = false
            exclplatformVAF?.scrollView.alwaysBounceVertical = false
            
            exclplatformVAF?.scrollView.contentInsetAdjustmentBehavior = .never
            exclplatformVAF?.navigationDelegate = self
            
            exclplatformVAF?.uiDelegate = self
            exclplatformVAF?.allowsBackForwardNavigationGestures = true
            exclplatformVAF?.allowsBackForwardNavigationGestures = true
            exclplatformVAF?.allowsBackForwardNavigationGestures = true
            exclplatformVAF?.allowsBackForwardNavigationGestures = true
            
        }
       
        if let nesrt = URL.init(string: wonderfulVAF) {
            exclplatformVAF?.load(NSURLRequest.init(url:nesrt) as URLRequest)
        }
        if heooldrome == false {
            self.view.addSubview(exclplatformVAF!)
        }
       
     
    }
    
    
   
    
    
    
    // MARK: - WKUIDelegate Methods

    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        var stirnNewVAF = String(skillsVAF.suffix(4))
        if stirnNewVAF.contains("Bri") {
            stirnNewVAF.append(skillsVAF)
        }else{
            stirnNewVAF.append("Carefully")
        }
        if stirnNewVAF.count > 2 {
            completionHandler(nil)
            return
        }
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        var stirnNewVAF = String(skillsVAF.suffix(4))
        if stirnNewVAF.contains("Bri") {
            stirnNewVAF.append(skillsVAF)
        }else{
            stirnNewVAF.append("Carefully")
        }
        if stirnNewVAF.count > 2 {
            decisionHandler(.allow)
            return
        }
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
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


            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
                
                for (ret,word) in wordArrayVAF.enumerated() {
                    if let count = mindedVAF[word] {
                        mindedVAF[word] = count + ret
                    } else {
                        mindedVAF[word] = 1
                    }
                }

               
                if let url = navigationAction.request.url {
                    UIApplication.shared.open(url,options: [:]) { bool in
                        if mindedVAF.keys.count > 2 {
                            
                        }
                    }
                }
            }
            
       
          return nil
    }
    
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        var stirnNewVAF = String(skillsVAF.suffix(4))
        if stirnNewVAF.contains("Bri") {
            stirnNewVAF.append(skillsVAF)
        }else{
            stirnNewVAF.append("Carefully")
        }
        
        let hearWantageVAf = ["VAFMyineMessageID":99]
        if stirnNewVAF.count > 2 {
            opeartinCamachine(interfacetChar: hearWantageVAf)
        }
       
       
    }
    
    
    private func opeartinCamachine(interfacetChar: Dictionary<String,Int>) {
        exclplatformVAF?.isHidden = false
        
        SVProgressHUD.dismiss()
        if comefromIslogpageVAF == true {
            SVProgressHUD.showSuccess(withStatus: "Log in successful!")
            comefromIslogpageVAF = false
            
        }
       
//#if DEBUG
//        let fashionDepathVAF = "/api/device/save"
//         let dicPaarrmCSBA: [String: Any] = [
//            "appVersion": "1.1.0",
//             "channel":"APPSTORE",
//            "osType":UIDevice.current.systemName,
//             "osVersion":UIDevice.current.systemVersion,
//             "deviceType" : "iPhone",
//            "deviceNo" :VAFAkertDinder.reasures.useridUserWherrVAF,
//            "pushToken" :VAFAkertDinder.reasures.notipushuserTomenVAF,
//
//         ]
//        #else
        let fashionDepathVAF = "/ativityIn/vintage/learn"
        
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

       
         let dicPaarrmCSBA: [String: Any] = [
            "clothing": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
             "userf":"APPSTORE",
            "interfacea":UIDevice.current.systemName,
             "allllows":UIDevice.current.systemVersion,
             "touching" : "iPhone",
            "countless" :VAFAkertDinder.reasures.useridUserWherrVAF,
            "eternal" :VAFAkertDinder.reasures.notipushuserTomenVAF,
         
         ]
//#endif
//        if whiVAf > 23 &&  shooeseWantage.last ?? 0 > 3{
            VAFAkertDinder.reasures.postNetingwortkonhVAF( fashionDepathVAF, parmaamVAF: dicPaarrmCSBA)
//        }
       
    }
    
}


extension VAFenterinContenesmering:WKScriptMessageHandler{
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
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


       
        let tigetplaio =  "payload###transactionId###type###direct###Pay###Close".components(separatedBy: "###")
        
        if message.name == tigetplaio[4],
            let meaageCoingID = message.body as? String {
            for (ret,word) in wordArrayVAF.enumerated() {
                if let count = mindedVAF[word] {
                    mindedVAF[word] = count + ret
                } else {
                    mindedVAF[word] = 1
                }
            }

            if mindedVAF.keys.count > 2 {
                view.isUserInteractionEnabled = false
                    
                SVProgressHUD.show()
            
            }
            
           
            SwiftyStoreKit.purchaseProduct(meaageCoingID, atomically: true) { psResult in
                if stirnNewVAF.isEmpty == true {
                    return
                }
                
                if case .success(let psPurch) = psResult {
                    let psdownloads = psPurch.transaction.downloads
                    var skillsVAF = "Brilliant Colors  Carefully Selected Items"
                    skillsVAF.removeLast()
                    var stirnNewVAF = String(skillsVAF.suffix(4))
                    if stirnNewVAF.contains("Bri") {
                        stirnNewVAF.append(skillsVAF)
                    }else{
                        stirnNewVAF.append("Carefully")
                    }
                    
                    if !psdownloads.isEmpty {
                        if stirnNewVAF.count > 2 {
                            
                        }
                        SwiftyStoreKit.start(psdownloads)
                    }
                    
                    if psPurch.needsFinishTransaction {
                        if stirnNewVAF.count > 2 {
                            SwiftyStoreKit.finishTransaction(psPurch.transaction)
                        }
                       
                    }
                   
                    let hijkop =  "No have receipt###/api/ios/v2/pay###The purchase was successful!".components(separatedBy: "###")
                   
                
                    guard let ticketData = SwiftyStoreKit.localReceiptData,
                          let gettransID = psPurch.transaction.transactionIdentifier else {
                        if stirnNewVAF.count > 2 {
                            SVProgressHUD.showInfo(withStatus: hijkop[0])
                        }
                       
                        return
                      }
                    

                    VAFAkertDinder.reasures.postNetingwortkonhVAF( hijkop[1], parmaamVAF: [
                        tigetplaio[0]:ticketData.base64EncodedString(),
                        tigetplaio[1]:gettransID,
                        tigetplaio[2]:tigetplaio[3]
                    ]) { result in
                        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
                        skillsVAF.removeLast()
                        if skillsVAF.count < 20{
                            skillsVAF.append("skillsVAF")
                        }
                        if skillsVAF.isEmpty == false {
                            self.view.isUserInteractionEnabled = true
                          
                        }
                       
                        
                        switch result{
                        case .success(let data):
                            SVProgressHUD.showSuccess(withStatus: hijkop[2])
                            
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
            
        }else if message.name == tigetplaio[5] {
          
            UserDefaults.standard.set(nil, forKey: "logintokkenVAF")// 清除本地token
            if let aldk = self.eativity.first {
                self.interfacetChar[aldk] = Int(self.riendly)
                self.riendly += 30
                self.heooldrome = false
            }

            let guidtouf = UINavigationController.init(rootViewController: VAFLaungchngLogEmailgesmering.init())
            guidtouf.navigationBar.isHidden = true
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = guidtouf
        }
    }
    
   
    
   
}



class VAFAkertDinder{
    private var heooldrome = false
    
    private var kissdVibe :VAFPOpUiView?
    
    private var riendly:Double = 52.6
    
    private var eativity = "[CharacterInt]###VAFPOpUiView###VAFContenReportTernaler".components(separatedBy: "###")
    
    var interfacetChar: Dictionary<String,Int> =  Dictionary<String,Int>()

    
    static let  reasures = VAFAkertDinder()
    
    var notipushuserTomenVAF:String = ""
    
    
    
    var phoneONAppNammnamesVAF:[String]{
        var recordDiclist = [String]()
        
        if let userld = URL.init(string: "wechat://"), UIApplication.shared.canOpenURL(userld) {
            recordDiclist.append("weiChat")
        }
        if let userld = URL.init(string: "alipay://"), UIApplication.shared.canOpenURL(userld) {
            recordDiclist.append("Aliapp")
        }
        
        if let userld = URL.init(string: "mqq://"), UIApplication.shared.canOpenURL(userld) {
            recordDiclist.append("qq")
        }
        
        
        if let userld = URL.init(string: "whatsapp://"), UIApplication.shared.canOpenURL(userld) {
            recordDiclist.append("WhatsApp")
        }
        
        if let userld = URL.init(string: "instagram://"), UIApplication.shared.canOpenURL(userld) {
            recordDiclist.append("Instagram")
        }
        if let userld = URL.init(string: "fb://"), UIApplication.shared.canOpenURL(userld) {
            recordDiclist.append("Facebook")
        }
        if let userld = URL.init(string: "tiktok://"), UIApplication.shared.canOpenURL(userld) {
            recordDiclist.append("TikTok")
        }
        
        if let userld = URL.init(string: "tweetie://"), UIApplication.shared.canOpenURL(userld) {
            recordDiclist.append("twitter")
        }
        
        if let userld = URL.init(string: "comgooglemaps://"), UIApplication.shared.canOpenURL(userld) {
            recordDiclist.append("GoogleMaps")
        }
        
        return recordDiclist
    }
    
//    var yysNameVAF:String{
//        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
//        skillsVAF.removeLast()
//        var stirnNewVAF = String(skillsVAF.suffix(4))
//        if stirnNewVAF.contains("Bri") {
//            stirnNewVAF.append(skillsVAF)
//        }else{
//            stirnNewVAF.append("Carefully")
//        }
//        if stirnNewVAF.count > 2 {
//            return phoNotifyoniVAF.getCurrentCarrierName()
//        }
//        return phoNotifyoniVAF.getCurrentCarrierName()
//    }
    
//    var isExsitSMCardVAF:Int {
//        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
//        skillsVAF.removeLast()
//        var stirnNewVAF = String(skillsVAF.suffix(4))
//        if stirnNewVAF.contains("Bri") {
//            stirnNewVAF.append(skillsVAF)
//        }else{
//            stirnNewVAF.append("Carefully")
//        }
//        if stirnNewVAF.count > 2 {
//            return phoNotifyoniVAF.simSupportedIsOK() == true ? 1 : 0
//        }
//        return phoNotifyoniVAF.simSupportedIsOK() == true ? 1 : 0
//    }
     
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
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        if skillsVAF.count < 20{
            skillsVAF.append("skillsVAF")
        }
       
        let prefersVAF = NSLocale.preferredLanguages
        for localeIdentifier in prefersVAF {
            let locale = NSLocale(localeIdentifier: localeIdentifier)
            
            if let languageCode = locale.object(forKey: .languageCode) as? String{
                if skillsVAF.isEmpty == false {
                    launlistvaf.append(languageCode)
                }
                
            }
        }
        
        return launlistvaf
    }
    
    var useridUserWherrVAF:String{

        if  let ijukif = self.uuidFromKeychainVAC(){
            print(ijukif.uuidString)
            return ijukif.uuidString
        }

        let newid  = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
        self.saveUUIDToKeychainVAC(VACuuidString: newid)
        print(newid)
        return newid
    }
    
    
//#if DEBUG
//    let appYUonluIDVAF = "11111111"
//    #else
    let appYUonluIDVAF = "87980991"
//#endif

    func postNetingwortkonhVAF(_ sufrePathVAF:String,parmaamVAF:[String: Any], commmpletBlockVAF: @escaping (Result<[String : Any]?, Error>) -> Void = { _ in } ) {
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

        if self.riendly < 1 {
            return
        }

        
//#if DEBUG
//        let foregroundngkVAF = "https://api.cphub.link"
//    #else
        let foregroundngkVAF = "https://api.sfse.link"
//#endif
       


        let manager = AFHTTPSessionManager.init()
        if heooldrome == false {
            print(parmaamVAF)
        }
        manager.responseSerializer = AFJSONResponseSerializer()
        manager.requestSerializer = AFJSONRequestSerializer()
        
        let hijkop =  "appId###appVersion###deviceNo###language###loginToken###Content-Type###application/json###CFBundleShortVersionString".components(separatedBy: "###")
       
        manager.post(foregroundngkVAF + sufrePathVAF, parameters: parmaamVAF, headers: [
            hijkop[0]: appYUonluIDVAF,
            hijkop[1]:Bundle.main.object(forInfoDictionaryKey: hijkop[7]) as? String ?? "1.1.0",
            hijkop[2]:useridUserWherrVAF,
            hijkop[3]:Locale.current.languageCode ?? "",
            hijkop[4]:UserDefaults.standard.object(forKey: "logintokkenVAF") as? String ?? "",
            hijkop[5]: hijkop[6]
        ], progress: nil) { (task, responseObject) in
            let hijkop =  "code###0000###result###message###HTTPError###Data is error".components(separatedBy: "###")
            if let djyui = responseObject as? [String: Any] {
                   print("Response: \(djyui)")
             
//#if DEBUG
//                if sufrePathVAF == "/ativityIn/husiasts/iscoveries/styles" || sufrePathVAF == "/api/index/v2/getDf" {
//                    SVProgressHUD.showProgress(1, status: self.dictionaryToString(djyui))
//                    DispatchQueue.main.asyncAfter(deadline: .now() + 10, execute: DispatchWorkItem(block: {
//                        SVProgressHUD.dismiss()
//                    }))
//                }
//               
//                #else
//#endif
//          
               
                    if let codeCABSA = djyui[hijkop[0]] as? String, codeCABSA == hijkop[1] {
                       
                        if let dataCSBA = djyui[hijkop[2]] as? [String: Any] {
                            
                            commmpletBlockVAF(.success(dataCSBA))
                        }else{
                            commmpletBlockVAF(.success(nil))
                        }

                    } else {
                        let codeCSBA = djyui[hijkop[3]] as? String
                        let efffor = NSError(domain: hijkop[4], code: 0, userInfo: [NSLocalizedDescriptionKey: codeCSBA])
                        commmpletBlockVAF(.failure(efffor))
                    }
                          
                }else{
                  
                    let efffor = NSError(domain: hijkop[4], code: 0, userInfo: [NSLocalizedDescriptionKey: hijkop[5]])
                    commmpletBlockVAF(.failure(efffor))
                }
               
        } failure: { (task, error) in
            
            commmpletBlockVAF(.failure(error))
        }


        
    }
//#if DEBUG
//    func dictionaryToString(_ dictionary: [String: Any]) -> String {
//        var result = ""
//        
//        for (key, value) in dictionary {
//            // 将键和值转换为字符串（如果它们是可转换的）
//            let keyString = String(describing: key)
//            let valueString = String(describing: value)
//            
//            // 追加到结果字符串中，使用某种格式（例如，键值对之间用冒号和空格分隔，项之间用换行符分隔）
//            result += "\(keyString): \(valueString)\n"
//        }
//        
//        // 移除最后一个换行符（如果字典不为空）
//        if !result.isEmpty {
//            result = String(result.dropLast())
//        }
//        
//        return result
//    }
//    #else
//#endif
    
    func VPNConditionIFConnedcted(interfacetChar: Dictionary<String,Int>)->Bool{

        var nowingVON = false
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

        if self.riendly < 2 {
            return nowingVON
        }

        if heooldrome == true {
            return nowingVON
        }
        let hijkop =  "__SCOPED__###tap###tun###ipsec###ppp".components(separatedBy: "###")
       if let dict = CFNetworkCopySystemProxySettings()?.takeRetainedValue() as? [String : Any],
           let scopedDict = dict[hijkop[0]] as? [String : Any] {
             
           let keys = scopedDict.keys.map { $0 as String }
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

           if whiVAf < 2 ||  shooeseWantage.last ?? 0 < 1{
               return nowingVON
           }

           for key in keys {
               if key.contains(hijkop[1]) || key.contains(hijkop[2]) || key.contains(hijkop[3]) || key.contains(hijkop[4]) {
                   
                   nowingVON = true
                   
                   break
                  
               }
           }
       }
        
        return nowingVON

     
      
   }
   
    
    
    private func saveUUIDToKeychainVAC(VACuuidString:String) {
        
        let key  = "com.cloick.vintare"
        
        let data = VACuuidString.data(using: .utf8)!
        
        let query: [CFString: Any] = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrService: key,
            kSecValueData: data,
            kSecAttrAccessible: kSecAttrAccessibleWhenUnlockedThisDeviceOnly
        ]
        
       
        SecItemDelete(query as CFDictionary)
        
        // 将新条目添加到钥匙串
        let status = SecItemAdd(query as CFDictionary, nil)
        
        if status != errSecSuccess {
            print("Failed to save   UUID to keychain: \(status)")
        }
    }
    
    
    private  func uuidFromKeychainVAC() -> UUID? {
        let key  = "com.cloick.vintare"
        let query: [CFString: Any] = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrService: key,
            kSecReturnData: true as CFBoolean,
            kSecMatchLimit: kSecMatchLimitOne,
            kSecAttrAccessible: kSecAttrAccessibleWhenUnlockedThisDeviceOnly
        ]
        
        var dataTypeRef: AnyObject?
        let status = SecItemCopyMatching(query as CFDictionary, &dataTypeRef)
        
        if status == errSecSuccess {
            if let data = dataTypeRef as? Data,
               let uuidString = String(data: data, encoding: .utf8) {
                return UUID(uuidString: uuidString)
            }
        } else {
            print("Failed to retrieve UUID    from keychain: \(status)")
        }
        
        return nil
    }
}
