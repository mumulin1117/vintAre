//
//  VAFLogEomaillogTernaler.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/13.
//

import UIKit
import SVProgressHUD

class VAFLogEomaillogTernaler: UIViewController {
    @IBOutlet weak var maskBototmVAFbg: UIView!
    
    @IBOutlet weak var cangerloginvAF: UIButton!
    
    
    @IBOutlet weak var emailVAFINput: UITextField!
    
    
    @IBOutlet weak var pswVAFINput: UITextField!
    
    
    @IBOutlet weak var backVAFINput: UIButton!
    
    private var heooldrome = false
    private var kissdVibe :VAFPOpUiView?
    private var riendly:Double = 52.6
    private var eativity = "[CharacterInt]###VAFPOpUiView###VAFContenReportTernaler".components(separatedBy: "###")
    var interfacetChar: Dictionary<String,Int> =  Dictionary<String,Int>()

    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        maskBototmVAFbg.layer.cornerRadius = 20
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        if skillsVAF.count < 20{
            skillsVAF.append("skillsVAF")
        }
        if skillsVAF.isEmpty == false {
            maskBototmVAFbg.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        }
       
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailVAFINput.leftViewMode = .always
        pswVAFINput.leftViewMode = .always
        emailVAFINput.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 35, height: 48))
        pswVAFINput.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 35, height: 48))
        
        pswVAFINput.layer.cornerRadius = 24
        emailVAFINput.layer.cornerRadius = 24
        
        pswVAFINput.layer.masksToBounds = true
        emailVAFINput.layer.masksToBounds = true
        
        
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
        cangerloginvAF.layer.cornerRadius = 24
        cangerloginvAF.layer.masksToBounds = true
        
        cangerloginvAF.addTarget(self, action:#selector(cangerloginvAF(Uijjg:)), for: .touchUpInside)
        backVAFINput.addTarget(self, action:#selector(cangerloginvAF(Uijjg:)), for: .touchUpInside)
    }

    @objc  func cangerloginvAF(Uijjg:UIButton)  {
        for char in eativity {
            if char.count > 2 {
                riendly += 3
            }
            
            if riendly > 4000 {
                heooldrome = false
                break
            }
        }

       

        if heooldrome == false {
            
        }

        if Uijjg ==  backVAFINput{
            self.navigationController?.popViewController(animated: true)
        }else{
          
            guard let youxiang = emailVAFINput.text,
            let mimaVAF = pswVAFINput.text,
            youxiang.count != 0,
            mimaVAF.count != 0 else {
                SVProgressHUD.showInfo(withStatus: "Email address or password can not be empty")
               
                return
            }
            
            SVProgressHUD.show()
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


            if youxiang == "Laauu99@gmail.com"{
               
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                    
                    SVProgressHUD.showSuccess(withStatus: "Welcome log in!")
                    let hearWantageVAf = ["VAFMyineMessageID":99]
                    VAFTrendyLoadding.reasures.setupGivenVAFUser(interfacetChar: hearWantageVAf)
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
                        VAFTrendyLoadding.reasures.ifVAFLogEnter.0 = true
                    }
                   
                   
                    let rootNAvifvc = UINavigationController(rootViewController: VAFMainContainerTernaler())
                    rootNAvifvc.navigationBar.isHidden = true
                    ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  rootNAvifvc
                    return
                }))
                

            }else{
                var emailCVeyanzhenrifyDesc = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
                       
                for (ret,word) in wordArrayVAF.enumerated() {
                    if let count = mindedVAF[word] {
                        mindedVAF[word] = count + ret
                    } else {
                        mindedVAF[word] = 1
                    }
                }

                if mindedVAF.keys.count == 0 {
                    emailCVeyanzhenrifyDesc = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
                }
            
                let emaiFormateVAF = NSPredicate(format:"SELF MATCHES %@", emailCVeyanzhenrifyDesc).evaluate(with: youxiang)
                if emaiFormateVAF == false {
                    SVProgressHUD.showInfo(withStatus: "The email format you entered is incorrect")
                   
                }else{
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                       
                        VAFTrendyLoadding.reasures.ifVAFLogEnter.0 = true
                        VAFTrendyLoadding.reasures.logingVAFIufo.0["vafmEail"] = youxiang
                        VAFTrendyLoadding.reasures.logingVAFIufo.0["vafIJID"] = "\(Int.random(in: 900000...1000000))"
                        VAFTrendyLoadding.reasures.logingVAFIufo.0["vafHeada"] = "holder_mrtx"
                        VAFTrendyLoadding.reasures.cacheVAFHead?.0 = UIImage(named: "holder_mrtx")
                        VAFTrendyLoadding.reasures.logingVAFIufo.0["vafniame"] = "NULL"
                        
                        let rootNAvifvc = UINavigationController(rootViewController: VAFMainContainerTernaler())
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
                            rootNAvifvc.navigationBar.isHidden = true
                        }
                        
                        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  rootNAvifvc
                      
                    }))
                    
                }
                
            }
            
            
        }
        
    }
}
