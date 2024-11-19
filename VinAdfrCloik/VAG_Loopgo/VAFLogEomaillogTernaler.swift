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
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        maskBototmVAFbg.layer.cornerRadius = 20
        maskBototmVAFbg.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
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
        
        
        cangerloginvAF.layer.cornerRadius = 24
        cangerloginvAF.layer.masksToBounds = true
        
        cangerloginvAF.addTarget(self, action:#selector(cangerloginvAF(Uijjg:)), for: .touchUpInside)
        backVAFINput.addTarget(self, action:#selector(cangerloginvAF(Uijjg:)), for: .touchUpInside)
    }

    @objc  func cangerloginvAF(Uijjg:UIButton)  {
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
            if youxiang == "Laauu99@gmail.com" {
               
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                    
                    SVProgressHUD.showSuccess(withStatus: "Welcome log in!")
                    VAFTrendyLoadding.reasures.setupGivenVAFUser()
                    
                    VAFTrendyLoadding.reasures.ifVAFLogEnter = true
                   
                    let rootNAvifvc = UINavigationController(rootViewController: VAFMainContainerTernaler())
                    rootNAvifvc.navigationBar.isHidden = true
                    ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  rootNAvifvc
                    return
                }))
                

            }else{
                let emailCVerifyDesc = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
                       
            
                let emaiFormateVAF = NSPredicate(format:"SELF MATCHES %@", emailCVerifyDesc).evaluate(with: youxiang)
                if emaiFormateVAF == false {
                    SVProgressHUD.showInfo(withStatus: "The email format you entered is incorrect")
                   
                }else{
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                       
                        VAFTrendyLoadding.reasures.ifVAFLogEnter = true
                        VAFTrendyLoadding.reasures.logingVAFIufo["vafmEail"] = "8906785@gmail.com"
                        VAFTrendyLoadding.reasures.logingVAFIufo["vafIJID"] = "\(Int.random(in: 900000...1000000))"
                        VAFTrendyLoadding.reasures.logingVAFIufo["csbpersonHead"] = "holder_mrtx"
                        VAFTrendyLoadding.reasures.cacheVAFHead = UIImage(named: "holder_mrtx")
                        VAFTrendyLoadding.reasures.logingVAFIufo["csbpersonName"] = "Guest"
                        
                        let rootNAvifvc = UINavigationController(rootViewController: VAFMainContainerTernaler())
                        rootNAvifvc.navigationBar.isHidden = true
                        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  rootNAvifvc
                      
                    }))
                    
                }
                
            }
            
            
        }
        
    }
}
