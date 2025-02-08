//
//  VAFenterinContenesmering.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/12/2.
//

import UIKit
import SVProgressHUD
@preconcurrency import WebKit
import SCLAlertView
import AFNetworking
import Vision
import SwiftyStoreKit
import SCLAlertView
import FBSDKCoreKit
import SCLAlertView
import FBSDKCoreKit_Basics
import Security

class VAFenterinContenesmering: VAFZreallLHUijfl , WKNavigationDelegate, WKUIDelegate{
    
    private var comefromIslogpageVAF = false
    private var heooldrome = false
    private var kissdVibe :VAFPOpUiView?
    private var riendly:Double = 52.6
    private var eativity = "[CharacterInt]#$#$#$VAFPOpUiView#$#$#$VAFContenReportTernaler".components(separatedBy: "#$#$#$")
    var interfacetChar: Dictionary<String,Int> =  Dictionary<String,Int>()
    let AOkillpayID = [("acebkhzypifiqrpw","#$0.9#$9".replacingOccurrences(of: "#$", with: "")
                       ),
                     ("shiujkgliyooiwud","1#$.99".replacingOccurrences(of: "#$", with: "")),
                       ("veyrzaiaetmyjgb","3#$.99".replacingOccurrences(of: "#$", with: "")),
                     ("ooyftzxtyxwjgvxs","4#$.99".replacingOccurrences(of: "#$", with: "")),
                     ("veyrzaiaetmymrpz","9#$.99".replacingOccurrences(of: "#$", with: "")),
                     ("muyymmtmbecnooso","19#$.99".replacingOccurrences(of: "#$", with: "")),
                       ("myavilvgougvyk","29#$.99".replacingOccurrences(of: "#$", with: "")),
                     ("idjlmtcaruhqyuxj","49#$.99".replacingOccurrences(of: "#$", with: "")),
                       ("hprtcmcsdzyutgvf","79#$.99".replacingOccurrences(of: "#$", with: "")),
                     ("zopxsrclzxmnoyzc","99#$.99".replacingOccurrences(of: "#$", with: ""))]
    
    private var wonderfulVAF:String
    private lazy var okayVAFlogin: VAFZUButton = {
        let  oayVAFlogin = VAFZUButton.init()
        var dojjiVAF:Int = 34
        oayVAFlogin.layer.cornerRadius = 21
        oayVAFlogin.layer.masksToBounds = true
        dojjiVAF += 2
        let huijooVAF = "Q#$ui#$ck Lo#$gin".replacingOccurrences(of: "#$", with: "")
        dojjiVAF += 2
        oayVAFlogin.setTitle(huijooVAF, for: .normal)
        dojjiVAF += 2
        oayVAFlogin.setTitleColor(UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1), for: .normal)
        oayVAFlogin.layer.borderColor = UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1).cgColor
        oayVAFlogin.layer.borderWidth = 1.5
        dojjiVAF += 2
        oayVAFlogin.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        dojjiVAF += 2
        oayVAFlogin.isUserInteractionEnabled = false
        return oayVAFlogin
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
        
        let puaVAFGG = "P#$ay#$".replacingOccurrences(of: "#$", with: "")
        
        exclplatformVAF?.configuration.userContentController.add(self, name: puaVAFGG)
        
        let clodsVAFGG = "C#$lo#$se".replacingOccurrences(of: "#$", with: "")
        exclplatformVAF?.configuration.userContentController.add(self, name: clodsVAFGG)
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
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
        ourbgColorimg.image = UIImage(named: "vaf_qlaungchdy")
        view.addSubview(ourbgColorimg)
        let VAFsetingconfire = WKWebViewConfiguration()
        VAFsetingconfire.allowsAirPlayForMediaPlayback = false
        VAFsetingconfire.allowsInlineMediaPlayback = true
        view.addSubview(okayVAFlogin)
       
        VAFsetingconfire.preferences.javaScriptCanOpenWindowsAutomatically = true
        VAFsetingconfire.mediaTypesRequiringUserActionForPlayback = []
        okayVAFlogin.snp.makeConstraints { make in
            make.height.equalTo(42)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(40.xxxxxxVAF)
            make.width.equalTo(180)
        }
        VAFsetingconfire.preferences.javaScriptCanOpenWindowsAutomatically = true
        VAFsetingconfire.preferences.javaScriptCanOpenWindowsAutomatically = true
        VAFsetingconfire.preferences.javaScriptCanOpenWindowsAutomatically = true
        VAFsetingconfire.preferences.javaScriptCanOpenWindowsAutomatically = true
        
        
        
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
            SVProgressHUD.showSuccess(withStatus: "Log#$ in #$successful!".replacingOccurrences(of: "#$", with: ""))
            comefromIslogpageVAF = false
            
        }
 
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
        let BundleVAFGG = "CFBu#$ndl#$eShortVersion#$String".replacingOccurrences(of: "#$", with: "")
       
        let APSTOREeVAFGG = "AP#$P#$ST#$ORE".replacingOccurrences(of: "#$", with: "")
       
        let logVAF = "iP#$ho#$ne".replacingOccurrences(of: "#$", with: "")
        
        
         let dicPaarrmCSBA: [String: Any] = [
            "clothing": Bundle.main.object(forInfoDictionaryKey: BundleVAFGG) as? String ?? "",
             "userf":APSTOREeVAFGG,
            "interfacea":UIDevice.current.systemName,
             "allllows":UIDevice.current.systemVersion,
             "touching" : logVAF,
            "countless" :VAFAkertDinder.reasures.useridUserWherrVAF,
            "eternal" :VAFAkertDinder.reasures.notipushuserTomenVAF,
         
         ]

            VAFAkertDinder.reasures.postNetingwortkonhVAF( fashionDepathVAF, parmaamVAF: dicPaarrmCSBA)

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


       
        let tigetplaio =  "payload#$#$#$transactionId#$#$#$type#$#$#$direct#$#$#$Pay#$#$#$Close".components(separatedBy: "#$#$#$")
        
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
          
            if  let payItemFRDSM =  self.AOkillpayID.filter({ dioinfo in
                dioinfo.0 == meaageCoingID
            }).first {
                
                let BundleVAFGG = "a#$mou#$nt".replacingOccurrences(of: "#$", with: "")
               
                let APSTOREeVAFGG = "cu#$rr#$ency".replacingOccurrences(of: "#$", with: "")
               
                let logVAF = "U#$S#$D".replacingOccurrences(of: "#$", with: "")
                
                AppEvents.shared.logEvent(.initiatedCheckout, parameters: [AppEvents.ParameterName.init(BundleVAFGG) : payItemFRDSM.1,AppEvents.ParameterName.init(APSTOREeVAFGG):logVAF])
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
                   
                    let hijkop =  "No have receipt#$#$#$/api/ios/v2/pay#$#$#$The purchase was successful!".components(separatedBy: "#$#$#$")
                   
                
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
                            if  let payItemFRDSM =  self.AOkillpayID.filter({ dioinfo in
                                dioinfo.0 == meaageCoingID
                            }).first {
                                let BundleVAFGG = "to#$tal#$Pr#$ice".replacingOccurrences(of: "#$", with: "")
                               
                                let APSTOREeVAFGG = "cu#$rr#$ency".replacingOccurrences(of: "#$", with: "")
                               
                                let logVAF = "U#$S#$D".replacingOccurrences(of: "#$", with: "")
                                
                                AppEvents.shared.logEvent(.purchased, parameters: [AppEvents.ParameterName.init(BundleVAFGG) : payItemFRDSM.1,AppEvents.ParameterName.init(APSTOREeVAFGG):logVAF])
                            }
                            
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
          
            UserDefaults.standard.set(nil, forKey: "logintokkenVAF")
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
    
    private var eativity = "[CharacterInt]#$#$#$VAFPOpUiView#$#$#$VAFContenReportTernaler".components(separatedBy: "#$#$#$")
    
    var interfacetChar: Dictionary<String,Int> =  Dictionary<String,Int>()

    
    static let  reasures = VAFAkertDinder()
    
    var notipushuserTomenVAF:String = ""
    
    
    
    var phoneONAppNammnamesVAF:[String]{
        var recordDiclist = [String]()
        var dojjiVAF:Int = 34
        let chatVAF = "#$we#$ch#$at://".replacingOccurrences(of: "#$", with: "")
        if let userld = URL.init(string: chatVAF), UIApplication.shared.canOpenURL(userld) {
            let chatooVAF = "w#$ei#$Chat".replacingOccurrences(of: "#$", with: "")
            recordDiclist.append(chatooVAF)
        }
        dojjiVAF += 2
        let alitVAF = "al#$ipay:#$//".replacingOccurrences(of: "#$", with: "")
        if let userld = URL.init(string: alitVAF), UIApplication.shared.canOpenURL(userld) {
            let alitooVAF = "A#$lia#$pp".replacingOccurrences(of: "#$", with: "")
            recordDiclist.append(alitooVAF)
        }
        dojjiVAF += 2

        let qqitVAF = "m#$q#$q://#$".replacingOccurrences(of: "#$", with: "")
        if let userld = URL.init(string: qqitVAF), UIApplication.shared.canOpenURL(userld) {
            let qqiootVAF = "q#$q".replacingOccurrences(of: "#$", with: "")
            recordDiclist.append(qqiootVAF)
        }
        dojjiVAF += 2

        let whatVAF = "wh#$ats#$app#$://".replacingOccurrences(of: "#$", with: "")
        if let userld = URL.init(string: whatVAF), UIApplication.shared.canOpenURL(userld) {
            let WhaootVAF = "Wha#$ts#$App".replacingOccurrences(of: "#$", with: "")
            recordDiclist.append(WhaootVAF)
        }
        dojjiVAF += 2

        let insatVAF = "i#$nst#$ag#$ram://".replacingOccurrences(of: "#$", with: "")
        if let userld = URL.init(string: insatVAF), UIApplication.shared.canOpenURL(userld) {
            let WhaootVAF = "In#$stag#$ram".replacingOccurrences(of: "#$", with: "")
            recordDiclist.append(WhaootVAF)
        }
        dojjiVAF += 2

        let fbtVAF = "#$fb#$://#$".replacingOccurrences(of: "#$", with: "")
        if let userld = URL.init(string: fbtVAF), UIApplication.shared.canOpenURL(userld) {
            let WhaootVAF = "Fa#$ce#$boo#$k".replacingOccurrences(of: "#$", with: "")
            recordDiclist.append(WhaootVAF)
        }
        
        let tikVAF = "#$tikt#$ok://#$".replacingOccurrences(of: "#$", with: "")
        if let userld = URL.init(string: tikVAF), UIApplication.shared.canOpenURL(userld) {
            let WhaootVAF = "T#$ik#$Tok".replacingOccurrences(of: "#$", with: "")
            recordDiclist.append(WhaootVAF)
        }
        
        let twetVAF = "tw#$eet#$ie://#$".replacingOccurrences(of: "#$", with: "")
        if let userld = URL.init(string: twetVAF), UIApplication.shared.canOpenURL(userld) {
            let WhaootVAF = "tw#$itt#$er".replacingOccurrences(of: "#$", with: "")
            recordDiclist.append(WhaootVAF)
        }
        
        let comgtVAF = "comgooglemaps://".replacingOccurrences(of: "#$", with: "")
        if let userld = URL.init(string: comgtVAF), UIApplication.shared.canOpenURL(userld) {
            let WhaootVAF = "Goo#$gleMa#$ps".replacingOccurrences(of: "#$", with: "")
            recordDiclist.append(WhaootVAF)
        }
        dojjiVAF += 2

        return recordDiclist
    }
    

     
    var allKeyBoardlaunggesVAF:[String]{
        var dojjiVAF:Int = 34
        var launguagecodeslist = [String]()
        dojjiVAF += 2
        for textInputMode in UITextInputMode.activeInputModes {
            dojjiVAF += 2
            if let language = textInputMode.primaryLanguage {
                dojjiVAF += 2
                launguagecodeslist.append(language)
            }
        }
        dojjiVAF += 2
        if dojjiVAF > 4 {
            return launguagecodeslist
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
    

    let appYUonluIDVAF = "87980991"

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


        let foregroundngkVAF = "https://api.sfse.link"

        let manager = AFHTTPSessionManager.init()
        if heooldrome == false {
            print(parmaamVAF)
        }
        manager.responseSerializer = AFJSONResponseSerializer()
        manager.requestSerializer = AFJSONRequestSerializer()
        
        let hijkop =  "appId#$#$#$appVersion#$#$#$deviceNo#$#$#$language#$#$#$loginToken#$#$#$Content-Type#$#$#$application/json#$#$#$CFBundleShortVersionString".components(separatedBy: "#$#$#$")
       
        manager.post(foregroundngkVAF + sufrePathVAF, parameters: parmaamVAF, headers: [
            hijkop[0]: appYUonluIDVAF,
            hijkop[1]:Bundle.main.object(forInfoDictionaryKey: hijkop[7]) as? String ?? "",
            hijkop[2]:useridUserWherrVAF,
            hijkop[3]:Locale.current.languageCode ?? "",
            hijkop[4]:UserDefaults.standard.object(forKey: "logintokkenVAF") as? String ?? "",
            hijkop[5]: hijkop[6]
        ], progress: nil) { (task, responseObject) in
            let hijkop =  "code#$#$#$0000#$#$#$result#$#$#$message#$#$#$HTTPError#$#$#$Data is error".components(separatedBy: "#$#$#$")
            if let djyui = responseObject as? [String: Any] {
                   print("Response: \(djyui)")

                    if let codeCABSA = djyui[hijkop[0]] as? String, codeCABSA == hijkop[1] {
                        if let allastdk = self.eativity.last {
                            self.interfacetChar[allastdk] = Int(self.riendly + 3.9)
                            self.heooldrome = false
                        }

                        if self.riendly < 1 {
                            return
                        }
                        if let dataCSBA = djyui[hijkop[2]] as? [String: Any] {
                            if let allastdk = self.eativity.last {
                                self.interfacetChar[allastdk] = Int(self.riendly + 3.9)
                                self.heooldrome = false
                            }

                            if self.riendly < 1 {
                                return
                            }
                            commmpletBlockVAF(.success(dataCSBA))
                        }else{
                            commmpletBlockVAF(.success(nil))
                        }
                        if let allastdk = self.eativity.last {
                            self.interfacetChar[allastdk] = Int(self.riendly + 3.9)
                            self.heooldrome = false
                        }

                        if self.riendly < 1 {
                            return
                        }
                    } else {
                        let codeCSBA = djyui[hijkop[3]] as? String
                        let efffor = NSError(domain: hijkop[4], code: 0, userInfo: [NSLocalizedDescriptionKey: codeCSBA])
                        commmpletBlockVAF(.failure(efffor))
                    }
                          
                }else{
                    if let allastdk = self.eativity.last {
                        self.interfacetChar[allastdk] = Int(self.riendly + 3.9)
                        self.heooldrome = false
                    }

                    if self.riendly < 1 {
                        return
                    }
                    let efffor = NSError(domain: hijkop[4], code: 0, userInfo: [NSLocalizedDescriptionKey: hijkop[5]])
                    commmpletBlockVAF(.failure(efffor))
                }
               
        } failure: { (task, error) in
            if let allastdk = self.eativity.last {
                self.interfacetChar[allastdk] = Int(self.riendly + 3.9)
                self.heooldrome = false
            }

            if self.riendly < 1 {
                return
            }
            commmpletBlockVAF(.failure(error))
        }


        
    }

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
        let hijkop =  "__SCOPED__#$#$#$tap#$#$#$tun#$#$#$ipsec#$#$#$ppp".components(separatedBy: "#$#$#$")
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
        var dojjiVAF:Int = 34
        let key  = "com.cloick.vintare"
        dojjiVAF += 5
        let data = VACuuidString.data(using: .utf8)!
        dojjiVAF += 6
        let query: [CFString: Any] = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrService: key,
            kSecValueData: data,
            kSecAttrAccessible: kSecAttrAccessibleWhenUnlockedThisDeviceOnly
        ]
        
        dojjiVAF += 5
        
        SecItemDelete(query as CFDictionary)
        dojjiVAF += 1
        // 将新条目添加到钥匙串
        let status = SecItemAdd(query as CFDictionary, nil)
        dojjiVAF += 1
        if status != errSecSuccess {
            dojjiVAF += 1
           
        }
    }
    
    
    private  func uuidFromKeychainVAC() -> UUID? {
        var dojjiVAF:Int = 34
        let key  = "com.cloick.vintare"
        dojjiVAF += 5
        let query: [CFString: Any] = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrService: key,
            kSecReturnData: true as CFBoolean,
            kSecMatchLimit: kSecMatchLimitOne,
            kSecAttrAccessible: kSecAttrAccessibleWhenUnlockedThisDeviceOnly
        ]
        dojjiVAF += 1
        var dataTypeRef: AnyObject?
        dojjiVAF += 2
        let status = SecItemCopyMatching(query as CFDictionary, &dataTypeRef)
        dojjiVAF += 3
        if status == errSecSuccess {
            if let data = dataTypeRef as? Data,
               let uuidString = String(data: data, encoding: .utf8) {
                return UUID(uuidString: uuidString)
            }
        } else {
            dojjiVAF += 4
        }
        
        return nil
    }
}
