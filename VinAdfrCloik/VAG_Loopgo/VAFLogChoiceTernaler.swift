//
//  VAFLogChoiceTernaler.swift
//  VinAdfrCloik
//
//  Created by mumu on 2024/11/13.
//

import UIKit

class VAFLogChoiceTernaler: UIViewController {

    @IBOutlet weak var okayKnowCAF: UIButton!
    
    @IBOutlet weak var emaillogCAF: UIButton!
    
    @IBOutlet weak var toplohinVAF: UIButton!
    
    @IBAction func vaf_seeElseua(_ sender: UIButton) {
        if sender == eluaVAFbutg {
            
        }
        
        if sender == okayKnowCAF {
            
        }
        
        
        if sender == toplohinVAF {
            
        }
        
        
        if sender == emaillogCAF {
            self.navigationController?.pushViewController(VAFLogEomaillogTernaler.init(), animated: true)
        }
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        maskBototmVAFbg.layer.cornerRadius = 20
        maskBototmVAFbg.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        toplohinVAF.layer.cornerRadius = 26
        toplohinVAF.layer.masksToBounds = true
        
        emaillogCAF.layer.cornerRadius = 26
        emaillogCAF.layer.masksToBounds = true
        emaillogCAF.layer.borderColor = UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1).cgColor
        emaillogCAF.layer.borderWidth = 1.6
        
        
        
    }

    @IBOutlet weak var maskBototmVAFbg: UIView!
    

    @IBOutlet weak var eluaVAFbutg: UIButton!
}
