//
//  VAFCommentTernaler.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/15.
//

import UIKit
import SVProgressHUD
class VAFCommentTernaler: UIViewController {
    private var heooldrome = false
    private var kissdVibe :VAFPOpUiView?
    private var riendly:Double = 52.6
    private var eativity = "[CharacterInt]###VAFPOpUiView###VAFContenReportTernaler".components(separatedBy: "###")
    var interfacetChar: Dictionary<String,Int> =  Dictionary<String,Int>()

    @IBOutlet weak var inouterCAF: UITextField!
    
    @IBOutlet weak var bgCommentVAF: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        inouterCAF.layer.cornerRadius = 15
        inouterCAF.layer.masksToBounds = true
        

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
        inouterCAF.leftViewMode = .always
        inouterCAF.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 35, height: 52))
    }

    @IBAction func sendmcommentVAF(_ sender: UIButton) {
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        var stirnNewVAF = String(skillsVAF.suffix(4))
        if stirnNewVAF.contains("Bri") {
            stirnNewVAF.append(skillsVAF)
        }else{
            stirnNewVAF.append("Carefully")
        }
        
        if sender.tag == 22 {
            self.dismiss(animated: true)
            return
        }
        guard let contetntt = inouterCAF.text,contetntt.count > 0 else {
            SVProgressHUD.showInfo(withStatus: "Your comment content cannot be empty!")
            return
        }
        
        if stirnNewVAF.count > 2 {
            SVProgressHUD.show()
            
        }
      
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0, execute: DispatchWorkItem(block: {
            self.dismiss(animated: true)
            
            SVProgressHUD.showSuccess(withStatus: "Your comments will be displayed after our approval")
        }))
        
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        bgCommentVAF.layer.cornerRadius = 24
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        if skillsVAF.count < 20{
            skillsVAF.append("skillsVAF")
        }
        if skillsVAF.isEmpty == false {
            bgCommentVAF.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        }
       
        
        
    }
}
