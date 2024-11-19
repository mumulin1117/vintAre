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
    
    
    
    
    @IBOutlet weak var bgVAf: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sureilYIVAF.layer.cornerRadius = 23
        sureilYIVAF.layer.masksToBounds = true
        
        
        bgVAf.layer.cornerRadius = 23
        bgVAf.layer.masksToBounds = true
        
        canceDetailYIVAF.layer.cornerRadius = 23
        canceDetailYIVAF.layer.masksToBounds = true
        canceDetailYIVAF.layer.borderColor = UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1).cgColor
        canceDetailYIVAF.layer.borderWidth = 1
        
    }


    @IBAction func resongChongse(_ sender: UIButton) {
       
        
        if sender == canceDetailYIVAF ||  sender == backVAF{
            self.dismiss(animated: true)
        }
        
        if sender == sureilYIVAF {
            let payign = VAFShowingPAyTernaler.init()
            self.navigationController?.pushViewController(payign, animated: true)
        }
        
    }

}
