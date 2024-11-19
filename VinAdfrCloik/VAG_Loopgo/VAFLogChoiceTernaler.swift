//
//  VAFLogChoiceTernaler.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/13.
//

import UIKit
import SVProgressHUD
class VAFLogChoiceTernaler: UIViewController {

    @IBOutlet weak var okayKnowCAF: UIButton!
    
    @IBOutlet weak var quiickQuestllogCAF: UIButton!
    
    @IBOutlet weak var emaillohinVAF: UIButton!//email
    
    @IBAction func vaf_seeElseua(_ sender: UIButton) {
        if sender == eluaVAFbutg {
            self.navigationController?.pushViewController(VAFTELUATernaler.init(), animated: true)
        }
        
        if sender == okayKnowCAF {
            okayKnowCAF.isSelected = !okayKnowCAF.isSelected
            VAFTrendyLoadding.reasures.hasAgreenELUAVAf = okayKnowCAF.isSelected
        }
        
        
        if sender == quiickQuestllogCAF {
            if VAFTrendyLoadding.reasures.hasAgreenELUAVAf == false {
                SVProgressHUD.showInfo(withStatus: "Please read and agree to the terms of use and conditions at first!")

                return
            }
            SVProgressHUD.show()
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {

                SVProgressHUD.showSuccess(withStatus: "Welcome log in!")
        
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
        
        
        if sender == emaillohinVAF  {
            
            if VAFTrendyLoadding.reasures.hasAgreenELUAVAf == false {
                SVProgressHUD.showInfo(withStatus: "Please read and agree to the terms of use and conditions at first!")

                return
            }
            
            self.navigationController?.pushViewController(VAFLogEomaillogTernaler.init(), animated: true)
        }
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        maskBototmVAFbg.layer.cornerRadius = 20
        maskBototmVAFbg.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        if VAFTrendyLoadding.reasures.hasSShowELUAVAf == false && VAFTrendyLoadding.reasures.hasAgreenELUAVAf == false{
            
            let comvjrh = VAFTELUATernaler.init()
//            comvjrh.OKAYAgBIBAosure = {
//                self.okayKnowCAF.isSelected = true
//            }
            
            self.navigationController?.pushViewController(comvjrh, animated: true)
            
           
            VAFTrendyLoadding.reasures.hasSShowELUAVAf = true
        }
        
        okayKnowCAF.isSelected = VAFTrendyLoadding.reasures.hasAgreenELUAVAf
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emaillohinVAF.layer.cornerRadius = 26
        emaillohinVAF.layer.masksToBounds = true
        
        quiickQuestllogCAF.layer.cornerRadius = 26
        quiickQuestllogCAF.layer.masksToBounds = true
        quiickQuestllogCAF.layer.borderColor = UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1).cgColor
        quiickQuestllogCAF.layer.borderWidth = 1.6
        
        
        
    }

    @IBOutlet weak var maskBototmVAFbg: UIView!
    

    @IBOutlet weak var eluaVAFbutg: UIButton!
}
