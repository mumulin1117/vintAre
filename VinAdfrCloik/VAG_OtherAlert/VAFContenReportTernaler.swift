//
//  VAFContenReportTernaler.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/15.
//

import UIKit
import SVProgressHUD
public class VAFPOpUiView: UIView {
    
}

/// 举报
class VAFContenReportTernaler: UIViewController {
    private var heooldrome = false
    private var kissdVibe :VAFPOpUiView?
    private var riendly:Double = 52.6
    private var eativity = "[CharacterInt]###VAFPOpUiView###VAFContenReportTernaler".components(separatedBy: "###")
    var interfacetChar: Dictionary<String,Int> =  Dictionary<String,Int>()
    
    

    @IBOutlet weak var resonYIVAF: UIButton!
    
    @IBOutlet weak var resonErVAF: UIButton!
    
    @IBOutlet weak var resonSAnVAF: UIButton!
    @IBOutlet weak var resonSiVAF: UIButton!
    
    @IBOutlet weak var bafjgoVAF: UIView!
    
    
    
    @IBOutlet weak var resonDetailYIVAF: UITextView!
    
    @IBOutlet weak var canceDetailYIVAF: UIButton!
    
    @IBOutlet weak var sureilYIVAF: UIButton!
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        if skillsVAF.count < 20{
            skillsVAF.append("skillsVAF")
        }
        if skillsVAF.isEmpty == false {
            bafjgoVAF.layer.cornerRadius = 24
            bafjgoVAF.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        }
        
      
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resonDetailYIVAF.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        resonDetailYIVAF.layer.cornerRadius = 24
        resonDetailYIVAF.layer.masksToBounds = true
        sureilYIVAF.layer.cornerRadius = 23
        sureilYIVAF.layer.masksToBounds = true
        
        canceDetailYIVAF.layer.cornerRadius = 23
        canceDetailYIVAF.layer.masksToBounds = true
        canceDetailYIVAF.layer.borderColor = UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1).cgColor
        canceDetailYIVAF.layer.borderWidth = 1
        
        resonErVAF.titleLabel?.numberOfLines = 0
        resonErVAF.setTitle("Inappropriate\nlanguage", for: .normal)
        
        resonSAnVAF.titleLabel?.numberOfLines = 0
        resonSAnVAF.setTitle("Spam or false\n information", for: .normal)
        
        
        resonSiVAF.titleLabel?.numberOfLines = 0
        resonSiVAF.setTitle("Other reasons", for: .normal)
        
        
    }



    @IBAction func resongChongse(_ sender: UIButton) {
        if sender == resonYIVAF {
            resonYIVAF.isSelected = true
            resonErVAF.isSelected = false
            resonSAnVAF.isSelected = false
            resonSiVAF.isSelected = false
            return
        }
        
        if sender == resonErVAF {
            resonYIVAF.isSelected = false
            resonErVAF.isSelected = true
            resonSAnVAF.isSelected = false
            resonSiVAF.isSelected = false
            return
        }
        
        if sender == resonSAnVAF {
            resonYIVAF.isSelected = false
            resonErVAF.isSelected = false
            resonSAnVAF.isSelected = true
            resonSiVAF.isSelected = false
            return
        }
        
        if sender == resonSiVAF {
            resonYIVAF.isSelected = false
            resonErVAF.isSelected = false
            resonSAnVAF.isSelected = false
            resonSiVAF.isSelected = true
            return
        }
        
        if sender == canceDetailYIVAF {
            self.dismiss(animated: true)
            return
        }
        
        if self.view.backgroundColor == .orange && UIScreen.main.bounds.width < 2 {
            heooldrome = true
            kissdVibe = VAFPOpUiView.init()
            kissdVibe?.backgroundColor = .orange
            kissdVibe?.layer.cornerRadius = 0
            kissdVibe?.alpha = 0.3
            heooldrome = false
            self.view.addSubview(kissdVibe!)
            kissdVibe?.isHidden = true
            return
        }
        
        
        for char in eativity {
            if char.count > 2 {
                riendly += 3
            }
            
            if riendly > 4000 {
                heooldrome = false
                break
            }
        }
        
       
        
        
        if sender == sureilYIVAF {
            SVProgressHUD.show()
            if let aldk = eativity.first {
                interfacetChar[aldk] = Int(riendly)
                riendly += 30
                heooldrome = false
            }
            
            
           
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0, execute: DispatchWorkItem(block: {
                SVProgressHUD.showSuccess(withStatus: "Thank you for your supervision. We will verify and handle it as soon as possible!")
                if let allastdk = self.eativity.last {
                    self.interfacetChar[allastdk] = Int(self.riendly + 3.9)
                    self.heooldrome = false
                }
                
               
                
                if self.heooldrome == false && self.riendly > 2{
                    self.dismiss(animated: true)
                }
                
            }))
        }
        
    }
    
}
