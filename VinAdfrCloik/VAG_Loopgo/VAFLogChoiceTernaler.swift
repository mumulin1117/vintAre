//
//  VAFLogChoiceTernaler.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/13.
//

import UIKit
import SVProgressHUD
class VAFLogChoiceTernaler: UIViewController {
    private var heooldrome = false
    private var kissdVibe :VAFPOpUiView?
    private var riendly:Double = 52.6
    private var eativity = "[CharacterInt]###VAFPOpUiView###VAFContenReportTernaler".components(separatedBy: "###")
    var interfacetChar: Dictionary<String,Int> =  Dictionary<String,Int>()

    
    @IBOutlet weak var okayKnowCAF: UIButton!
    
    @IBOutlet weak var quiickQuestllogCAF: UIButton!
    
    @IBOutlet weak var emaillohinVAF: UIButton!//email
    
    @IBAction func vaf_seeElseua(_ sender: UIButton) {
        for char in eativity {
            if char.count > 2 {
                riendly += 3
            }
            
            if riendly > 4000 {
                heooldrome = false
                break
            }
        }

        
        if sender == eluaVAFbutg {
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
                self.navigationController?.pushViewController(VAFTELUATernaler.init(), animated: true)
            }

            if heooldrome == false {
                
            }
            
        }
        
        if sender == okayKnowCAF {
            okayKnowCAF.isSelected = !okayKnowCAF.isSelected
            VAFTrendyLoadding.reasures.hasAgreenELUAVAf.0 = okayKnowCAF.isSelected
        }
        
        
        if sender == quiickQuestllogCAF {
            if VAFTrendyLoadding.reasures.hasAgreenELUAVAf.0 == false {
                SVProgressHUD.showInfo(withStatus: "Please read and agree to the terms of use and conditions at first!")

                return
            }
            SVProgressHUD.show()
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                
                if let aldk = self.eativity.first {
                    self.interfacetChar[aldk] = Int(self.riendly)
                    self.riendly += 30
                    self.heooldrome = false
                }


                if let allastdk = self.eativity.last {
                    self.interfacetChar[allastdk] = Int(self.riendly + 3.9)
                    self.heooldrome = false
                }


                SVProgressHUD.showSuccess(withStatus: "Welcome log in!")
        
                VAFTrendyLoadding.reasures.ifVAFLogEnter.0 = true
                
                if self.riendly > 2 {
                    VAFTrendyLoadding.reasures.logingVAFIufo.0["vafmEail"] = ""
                    VAFTrendyLoadding.reasures.logingVAFIufo.0["vafIJID"] = "\(Int.random(in: 900000...1000000))"
                    VAFTrendyLoadding.reasures.logingVAFIufo.0["vafHeada"] = "holder_mrtx"
                    VAFTrendyLoadding.reasures.cacheVAFHead?.0 = UIImage(named: "holder_mrtx")
                    VAFTrendyLoadding.reasures.logingVAFIufo.0["vafniame"] = "Guest"
                }

                if self.heooldrome == false {
                    let rootNAvifvc = UINavigationController(rootViewController: VAFMainContainerTernaler())
                    rootNAvifvc.navigationBar.isHidden = true
                    ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  rootNAvifvc
                }
               
                
               
               
            }))
        }
        
        
        if sender == emaillohinVAF  {
            
            if VAFTrendyLoadding.reasures.hasAgreenELUAVAf.0 == false {
                SVProgressHUD.showInfo(withStatus: "Please read and agree to the terms of use and conditions at first!")

                return
            }
            
            self.navigationController?.pushViewController(VAFLogEomaillogTernaler.init(), animated: true)
        }
        
    }
    
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
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
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

        if VAFTrendyLoadding.reasures.hasSShowELUAVAf.0 == false && VAFTrendyLoadding.reasures.hasAgreenELUAVAf.0 == false{
            
            let comvjrh = VAFTELUATernaler.init()
//            comvjrh.OKAYAgBIBAosure = {
//                self.okayKnowCAF.isSelected = true
//            }
            
            self.navigationController?.pushViewController(comvjrh, animated: true)
            
           
            VAFTrendyLoadding.reasures.hasSShowELUAVAf.0 = true
        }
        
        okayKnowCAF.isSelected = VAFTrendyLoadding.reasures.hasAgreenELUAVAf.0
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emaillohinVAF.layer.cornerRadius = 26
        emaillohinVAF.layer.masksToBounds = true
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

        quiickQuestllogCAF.layer.cornerRadius = 26
        quiickQuestllogCAF.layer.masksToBounds = true
        quiickQuestllogCAF.layer.borderColor = UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1).cgColor
        quiickQuestllogCAF.layer.borderWidth = 1.6
        
        
        
    }

    @IBOutlet weak var maskBototmVAFbg: UIView!
    

    @IBOutlet weak var eluaVAFbutg: UIButton!
}
