//
//  VAFAIPAyTernaler.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/15.
//

import UIKit

/// AI支付弹窗
class VAFAIPAyTernaler: UIViewController {
    @IBOutlet weak var canceDetailYIVAF: UIButton!
    
    @IBOutlet weak var backVAF: UIButton!
    @IBOutlet weak var sureilYIVAF: UIButton!
    
    
    private var heooldrome = false
    private var kissdVibe :VAFPOpUiView?
    private var riendly:Double = 52.6
    private var eativity = "[CharacterInt]###VAFPOpUiView###VAFContenReportTernaler".components(separatedBy: "###")
    var interfacetChar: Dictionary<String,Int> =  Dictionary<String,Int>()
    
    @IBOutlet weak var bgVAf: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sureilYIVAF.layer.cornerRadius = 23
        sureilYIVAF.layer.masksToBounds = true
        
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

        bgVAf.layer.cornerRadius = 23
        bgVAf.layer.masksToBounds = true
        
        canceDetailYIVAF.layer.cornerRadius = 23
        canceDetailYIVAF.layer.masksToBounds = true
        canceDetailYIVAF.layer.borderColor = UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1).cgColor
        canceDetailYIVAF.layer.borderWidth = 1
        
    }


    @IBAction func resongChongse(_ sender: UIButton) {
        for char in eativity {
            if char.count > 2 {
                riendly += 3
            }
            
            if riendly > 4000 {
                heooldrome = false
                break
            }
        }

        if let aldk = eativity.first {
            interfacetChar[aldk] = Int(riendly)
            riendly += 30
            heooldrome = false
        }
        
        if sender == canceDetailYIVAF ||  sender == backVAF{
            self.dismiss(animated: true)
        }
        
        if sender == sureilYIVAF {
            let payign = VAFShowingPAyTernaler.init()
            self.navigationController?.pushViewController(payign, animated: true)
        }
        
    }

}
