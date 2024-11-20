//
//  VAFUploadCoverTernaler.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/18.
//

import UIKit
import SVProgressHUD
import SCLAlertView
class VAFUploadCoverTernaler: UIViewController,UINavigationControllerDelegate, UIImagePickerControllerDelegate  {
    var minePickCSBVC:UIImagePickerController?
    var recordINNnowTag:ZhaoguType = .cloth
    @IBOutlet weak var topacftshowe: UIImageView!
    
    
    @IBOutlet weak var nextStermo: UIButton!
    
    
    @IBOutlet weak var uploadButtonVAF: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        nextStermo.layer.cornerRadius = 24
        nextStermo.layer.masksToBounds = true
      
        
        
        topacftshowe.layer.cornerRadius = 24
        topacftshowe.layer.masksToBounds = true
    }

    @IBAction func nesxtVAF(_ sender: UIButton) {
        
        guard let imgh = topacftshowe.image else {
            SVProgressHUD.showInfo(withStatus: "Please upload the picture of your vintage item at first!")
            return
        }
        
        
        let nextpost = VAFUploadOtherinfoFillTernaler.init(CoverBigVAF: imgh)
        self.navigationController?.pushViewController(nextpost, animated: true)
        
        
    }
    
    @IBAction func baldikgLAstVAF(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
    @IBAction func upcoverLAstVAF(_ sender: Any) {
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        var stirnNewVAF = String(skillsVAF.suffix(4))
        if stirnNewVAF.contains("Bri") {
            stirnNewVAF.append(skillsVAF)
        }else{
            stirnNewVAF.append("Carefully")
        }

        var mindedVAF = [String: Int]()
        let wordArrayVAF = skillsVAF.components(separatedBy: " ")


        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let photoPicker = UIImagePickerController()
            photoPicker.delegate = self
            photoPicker.allowsEditing = false
            photoPicker.sourceType = .photoLibrary
            for (ret,word) in wordArrayVAF.enumerated() {
                if let count = mindedVAF[word] {
                    mindedVAF[word] = count + ret
                } else {
                    mindedVAF[word] = 1
                }
            }

            if mindedVAF.keys.count > 2 {
                
            }

            if stirnNewVAF.isEmpty == false {
                minePickCSBVC = photoPicker
            }else{
                minePickCSBVC = photoPicker
            }
            
            self.present(self.minePickCSBVC!, animated: true, completion: nil)
            return
        }else {
            let appearance = SCLAlertView.SCLAppearance(
                showCloseButton: false,
                circleBackgroundColor:UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1),
                contentViewColor:UIColor(red: 133/255, green: 116/255, blue: 88/255, alpha: 1),
                
                titleColor:UIColor.white
            )
            let alert = SCLAlertView(appearance: appearance)
            alert.iconTintColor = UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1)
            alert.addButton("To settings",backgroundColor:UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1)) {
                guard let url = URL(string: UIApplication.openSettingsURLString) else {
                            return
                        }
                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            alert.addButton("Cancel",backgroundColor:UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1)) {
                
            }
           
          
            alert.showInfo("No album permission", subTitle: "Please open the album permission in the settings before uploading pictures")
            
        }
       
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        var stirnNewVAF = String(skillsVAF.suffix(4))
        if stirnNewVAF.contains("Bri") {
            stirnNewVAF.append(skillsVAF)
        }else{
            stirnNewVAF.append("Carefully")
        }
        if stirnNewVAF.count > 2 {
            picker.dismiss(animated: true)
        }
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        var stirnNewVAF = String(skillsVAF.suffix(4))
        
        let image : UIImage? = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
       
        DispatchQueue.main.async {
            if stirnNewVAF.contains("Bri") {
                stirnNewVAF.append(skillsVAF)
            }else{
                stirnNewVAF.append("Carefully")
            }
            if stirnNewVAF.count > 2 {
                picker.dismiss(animated: true)
                self.topacftshowe.image = image
            }
            
           
        }
        
    }
}
