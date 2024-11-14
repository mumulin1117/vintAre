//
//  VAFLogEomaillogTernaler.swift
//  VinAdfrCloik
//
//  Created by mumu on 2024/11/13.
//

import UIKit

class VAFLogEomaillogTernaler: UIViewController {
    @IBOutlet weak var maskBototmVAFbg: UIView!
    
    @IBOutlet weak var cangerloginvAF: UIButton!
    
    
    @IBOutlet weak var emailVAFINput: UITextField!
    
    
    @IBOutlet weak var pswVAFINput: UITextField!
    
    
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
        
        
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
