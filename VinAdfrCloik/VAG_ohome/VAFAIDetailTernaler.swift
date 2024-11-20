//
//  VAFAIDetailTernaler.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/15.
//

import UIKit
import SVProgressHUD
class VAFAIDetailTernaler: UIViewController {
    
    @IBOutlet weak var shongZhaoGuImgvVAF: UIImageView!
    
    var uhsData = (Dictionary<String,String>(),0)
    
    
    @IBOutlet weak var bgCommentVAF: UIView!
    @IBOutlet weak var resulAiVAF: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bgCommentVAF.layer.cornerRadius = 20
        let mingshonh = (uhsData.0["vafshowPic"] ?? "").components(separatedBy: ",")
       
        shongZhaoGuImgvVAF.image = UIImage(named:mingshonh[0])
        bgCommentVAF.layer.masksToBounds = true
        resulAiVAF.isEditable = false
        resulAiVAF.contentInset = UIEdgeInsets.init(top: 16, left: 16, bottom: 16, right: 16)
        shongZhaoGuImgvVAF.contentMode = .scaleAspectFill
        shongZhaoGuImgvVAF.layer.cornerRadius = 20
        shongZhaoGuImgvVAF.layer.masksToBounds = true
        
        SVProgressHUD.show(withStatus: "In AI analysis.......")
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            SVProgressHUD.showSuccess(withStatus: "The result is out!")
            
            self.resulAiVAF.text = "Here are the styling options generated based on this vintage item：\n\n" + (self.uhsData.0["AiREsult"] ?? "") +  (self.uhsData.0["vafDYMAIComment"] ?? "")
        }))
        
        
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
       
        resulAiVAF.layer.cornerRadius = 20
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        if skillsVAF.count < 20{
            skillsVAF.append("skillsVAF")
        }
        if skillsVAF.isEmpty == false {
            resulAiVAF.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        }
       
    }
    
    @IBAction func sendmcommentVAF(_ sender: UIButton) {
        
        
        if sender.tag == 90 {
            
            let acfreport = VAFContenReportTernaler.init()
            acfreport.modalPresentationStyle = .overCurrentContext
            self.present(acfreport, animated: true)
            
        }
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        var stirnNewVAF = String(skillsVAF.suffix(4))
        if stirnNewVAF.contains("Bri") {
            stirnNewVAF.append(skillsVAF)
        }else{
            stirnNewVAF.append("Carefully")
        }
        if stirnNewVAF.count > 2 {
            if sender.tag == 10 {
                
                self.navigationController?.popViewController(animated: true)
                
            }
        }
        
        
        
        
    }

}
