//
//  VAFContenReportTernaler.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/15.
//

import UIKit
import SVProgressHUD

/// 举报
class VAFContenReportTernaler: UIViewController {

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
        bafjgoVAF.layer.cornerRadius = 24
        bafjgoVAF.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        
        
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
        }
        
        if sender == resonErVAF {
            resonYIVAF.isSelected = false
            resonErVAF.isSelected = true
            resonSAnVAF.isSelected = false
            resonSiVAF.isSelected = false
        }
        
        if sender == resonSAnVAF {
            resonYIVAF.isSelected = false
            resonErVAF.isSelected = false
            resonSAnVAF.isSelected = true
            resonSiVAF.isSelected = false
        }
        
        if sender == resonSiVAF {
            resonYIVAF.isSelected = false
            resonErVAF.isSelected = false
            resonSAnVAF.isSelected = false
            resonSiVAF.isSelected = true
        }
        
        if sender == canceDetailYIVAF {
            self.dismiss(animated: true)
        }
        
        if sender == sureilYIVAF {
            SVProgressHUD.show()
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0, execute: DispatchWorkItem(block: {
                SVProgressHUD.showSuccess(withStatus: "Thank you for your supervision. We will verify and handle it as soon as possible!")
                
                self.dismiss(animated: true)
            }))
        }
        
    }
    
}
