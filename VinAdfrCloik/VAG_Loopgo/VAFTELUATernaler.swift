//
//  VAFTELUATernaler.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/14.
//

import UIKit

class VAFTELUATernaler: UIViewController {
  
    var noingTyper:Int = 0

    @IBOutlet weak var mintTitleVAF: UILabel!
    
    
    
    
    @IBOutlet weak var mindContentVAF: UITextView!
    
    private var heooldrome = false
    private var kissdVibe :VAFPOpUiView?
    private var riendly:Double = 52.6
    private var eativity = "[CharacterInt]###VAFPOpUiView###VAFContenReportTernaler".components(separatedBy: "###")
    var interfacetChar: Dictionary<String,Int> =  Dictionary<String,Int>()

    
    
    @IBOutlet weak var EluaAgreeVAF: UIButton!
    @IBOutlet weak var eluaVAFBg: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        EluaAgreeVAF.layer.cornerRadius = 20
        EluaAgreeVAF.layer.masksToBounds = true
        
        
        eluaVAFBg.layer.cornerRadius = 24
        eluaVAFBg.layer.masksToBounds = true
        
        if let priview = view.viewWithTag(12), let termview = view.viewWithTag(13),self.noingTyper != 0{
            priview.isHidden = true
            termview.isHidden = true
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
        }
        if noingTyper == 1 {
            
            mintTitleVAF.text = "LivaMe Privacy Policy"
            mindContentVAF.text = """
Information Collection

LivaMe collects personal information such as name, email address, and browsing activity to provide personalized services and enhance user experience. Non-personal data may also be collected for analytical purposes.

Data Usage

The data collected by LivaMe is used to improve services, personalize content, and provide relevant recommendations. User information may be shared with third-party service providers for operational purposes.

Security Measures

LivaMe employs industry-standard security measures to protect user data from unauthorized access, disclosure, or alteration. While we strive to safeguard your information, no method of transmission over the internet is completely secure.

Third-Party Links

The LivaMe application may contain links to external websites or services not operated by us. We are not responsible for the privacy practices or content of these third-party sites.

User Consent

By using the LivaMe platform, you consent to the collection and use of your personal information as outlined in this Privacy Policy. You have the right to update or delete your information from our database upon request.

Contact Information

If you have any questions or concerns regarding our Privacy Policy, please contact us at contact@LivaMe.com.

By continuing to use the LivaMe application, you acknowledge that you have read and agreed to the terms outlined in this Privacy Policy.
"""
            EluaAgreeVAF.setTitle("I know", for: .normal)
        }else if noingTyper == 2{
            mintTitleVAF.text = "LivaMe Terms of Use"
            mindContentVAF.text = """
1. Acceptance of Terms

By accessing or using the LivaMe application, you agree to comply with these Terms of Use. If you do not agree with any part of these terms, you should not use the application.

2. User Eligibility

You must be at least 18 years old to use the LivaMe platform. By using the application, you confirm that you meet this age requirement and have the legal capacity to enter into this agreement.

3. Account Registration

When creating an account on LivaMe, you agree to provide accurate and complete information. You are responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account.

4. User Content

By sharing content on LivaMe, including images, comments, or messages, you grant LivaMe a non-exclusive, transferable, sub-licensable, royalty-free license to use, reproduce, modify, and distribute your content within the application.

5. Prohibited Activities

You are prohibited from engaging in any activities that violate the law, infringe upon intellectual property rights, or harm the LivaMe community. This includes but is not limited to spamming, phishing, or impersonating others.

6. Community Guidelines

LivaMe fosters a positive and inclusive community. Users are expected to treat each other with respect, refrain from discriminatory behavior, and refrain from posting offensive or inappropriate content.

7. Modification of Terms

LivaMe reserves the right to update or modify these Terms of Use at any time. It is your responsibility to review the terms periodically. Continued use of the application after changes constitute acceptance of the new terms.

8. Termination of Account

LivaMe reserves the right to suspend or terminate your account if you violate these Terms of Use or engage in activities that are detrimental to the platform or its users.

9. Contact Information

If you have any questions regarding these Terms of Use, please contact us at contact@LivaMe.com.

By using the LivaMe application, you acknowledge that you have read, understood, and agreed to abide by these Terms of Use.
"""
           EluaAgreeVAF.setTitle("I know", for: .normal)
            
        }
        
    }


    @IBAction func tobakgVAG(_ sender: UIButton) {
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

        
        if sender.tag == 10 {
            self.navigationController?.popViewController(animated: true)
        }
        
        
        if sender.tag == 11 {
            VAFTrendyLoadding.reasures.hasAgreenELUAVAf.0 = true
          
            
            self.navigationController?.popViewController(animated: true)
        }
        
        
        if sender.tag == 12 {
            let termf = VAFTELUATernaler.init()
            if self.riendly > 2 {
                termf.noingTyper = 1
            }
            
            if let priview = termf.view.viewWithTag(12), let termview = termf.view.viewWithTag(13){
                priview.isHidden = true
                termview.isHidden = true
            }
            
            self.navigationController?.pushViewController(termf, animated: true)
        }
        
        
        if sender.tag == 13 {
            let termf = VAFTELUATernaler.init()
            termf.noingTyper = 2
            if let priview = termf.view.viewWithTag(12), let termview = termf.view.viewWithTag(13){
                priview.isHidden = true
                termview.isHidden = true
            }
            self.navigationController?.pushViewController(termf, animated: true)
        }
        
        
        
    }
    
}
