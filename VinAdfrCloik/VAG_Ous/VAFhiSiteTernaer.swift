//
//  VAFhiSiteTernaer.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/19.
//

import UIKit
import SVProgressHUD

import SCLAlertView

class VAFhiSiteTernaer: UIViewController {

    @IBOutlet weak var topbgVAFD: UIView!
    
    @IBOutlet weak var stopAccountre: UIButton!
    
    @IBOutlet weak var outAccountre: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        topbgVAFD.layer.cornerRadius = 24
        topbgVAFD.layer.masksToBounds = true
        
        
        stopAccountre.layer.cornerRadius = 24
        stopAccountre.layer.masksToBounds = true
        
        
        outAccountre.layer.cornerRadius = 24
        outAccountre.layer.masksToBounds = true
    }
    @IBAction func fanhuiVAfgu(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func stopActionVAf(_ sender: UIButton) {
        
        let appearance = SCLAlertView.SCLAppearance(
            showCloseButton: false,
            circleBackgroundColor:UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1),
            contentViewColor:UIColor(red: 133/255, green: 116/255, blue: 88/255, alpha: 1),
            
            titleColor:UIColor.white
        )
        let alert = SCLAlertView(appearance: appearance)
        alert.iconTintColor = UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1)
        alert.addButton("Yes",backgroundColor:UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1)) {
           
            VAFTrendyLoadding.reasures.ifVAFLogEnter = false
            
            let rootNAvifvc = UINavigationController(rootViewController: VAFLogChoiceTernaler())
            rootNAvifvc.navigationBar.isHidden = true
            
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  rootNAvifvc
            
        }
        alert.addButton("Not now",backgroundColor:UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1)) {
            
        }
       
      
        alert.showInfo("Delete Account?", subTitle: "If you delete this account,all information related to this account will be deleted")
        
    }
    
    
    
    @IBAction func putActionVAF(_ sender: UIButton) {
        
        VAFTrendyLoadding.reasures.ifVAFLogEnter = false
        
        let rootNAvifvc = UINavigationController(rootViewController: VAFLogChoiceTernaler())
        rootNAvifvc.navigationBar.isHidden = true
        
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  rootNAvifvc
        
    }
    
    
    
    
    @IBAction func prueiusejringoActionVAF(_ sender: UIButton) {
        
        if sender.tag == 50 {
            let privaf = VAFTELUATernaler.init()
           
            privaf.noingTyper = 1
            if let priview = privaf.view.viewWithTag(12), let termview = privaf.view.viewWithTag(13){
                priview.isHidden = true
                termview.isHidden = true
            }
            
            self.navigationController?.pushViewController(privaf, animated: true)
        }
        if sender.tag == 60 {
            
            
            let termf = VAFTELUATernaler.init()
            termf.noingTyper = 2
            if let priview = termf.view.viewWithTag(12), let termview = termf.view.viewWithTag(13){
                priview.isHidden = true
                termview.isHidden = true
            }
            self.navigationController?.pushViewController(termf, animated: true)
        }
        
        if sender.tag == 70 {
            SVProgressHUD.show()
           
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                SVProgressHUD.showSuccess(withStatus: "clear completed!")
            }))
        }
        
        if sender.tag == 80 {
            let folooeo = VAFUaerlistTernaer.init(TypertLisrt: 2)
            
            self.navigationController?.pushViewController(folooeo, animated: true)
        }
        
        if sender.tag == 90 {
            self.navigationController?.pushViewController(VAFAbloutusTernaler.init(), animated: true)
        }
        
        
        
    }
    
}
