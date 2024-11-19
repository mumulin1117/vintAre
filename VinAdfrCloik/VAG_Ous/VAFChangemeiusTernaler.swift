//
//  VAFChangemeiusTernaler.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/19.
//

import UIKit
import SCLAlertView
import SVProgressHUD
class VAFChangemeiusTernaler: UIViewController ,UINavigationControllerDelegate, UIImagePickerControllerDelegate  {
    var minePickCSBVC:UIImagePickerController?

    
    @IBOutlet weak var shoingAvtorImgVAf: UIImageView!
    
    
    @IBOutlet weak var shingNameVAF: UITextField!
    
    
    @IBOutlet weak var iderVAF: UILabel!
    
    
    @IBOutlet weak var emailVAF: UILabel!
    
    
    @IBOutlet weak var borneCatVAf: UITextField!
    
    
    @IBOutlet weak var saymysekftVAF: UITextField!
    
    
    @IBOutlet weak var bestartVAF: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        shoingAvtorImgVAf.layer.cornerRadius = 21
        shoingAvtorImgVAf.layer.masksToBounds = true
        shoingAvtorImgVAf.contentMode = .scaleAspectFill
        
        bestartVAF.layer.cornerRadius = 20
        bestartVAF.layer.masksToBounds = true
        
        let avotobgvaf0 = view.viewWithTag(10)
        avotobgvaf0?.layer.cornerRadius = 27.5
        avotobgvaf0?.layer.masksToBounds = true
        
        let avotobgvaf1 = view.viewWithTag(20)
        avotobgvaf1?.layer.cornerRadius = 27.5
        avotobgvaf1?.layer.masksToBounds = true
        
        
        let avotobgvaf2 = view.viewWithTag(30)
        avotobgvaf2?.layer.cornerRadius = 27.5
        avotobgvaf2?.layer.masksToBounds = true
        
        
        let avotobgvaf3 = view.viewWithTag(40)
        avotobgvaf3?.layer.cornerRadius = 27.5
        avotobgvaf3?.layer.masksToBounds = true
        
        let avotobgvaf4 = view.viewWithTag(50)
        avotobgvaf4?.layer.cornerRadius = 27.5
        avotobgvaf4?.layer.masksToBounds = true
        
        
        let avotobgvaf5 = view.viewWithTag(60)
        avotobgvaf5?.layer.cornerRadius = 27.5
        avotobgvaf5?.layer.masksToBounds = true
        
        
        let ingf = VAFTrendyLoadding.reasures.logingVAFIufo
        
        shoingAvtorImgVAf.image = VAFTrendyLoadding.reasures.cacheVAFHead
        
        shingNameVAF.text = ingf["vafniame"]
        
        iderVAF.text = "UID:  " + (ingf["vafniame"] ?? "")
        saymysekftVAF.text = ingf["vafsay"]
        emailVAF.text =  ingf["vafmEail"]
       
        borneCatVAf.text =  ingf["vafBornDayh"]
        
        bestartVAF.addTarget(self, action: #selector(quickEdSavemyEditeriufo), for: .touchUpInside)
        
        avotobgvaf0?.addGestureRecognizer(UITapGestureRecognizer(target: self, action:#selector(changrimgClickEdSavemyEditeriufo(tatppp:))  ))
    }
    
    @objc func changrimgClickEdSavemyEditeriufo(tatppp:UITapGestureRecognizer) {
        
        if tatppp.view?.tag == 10 {//image
            
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
                let photoPicker = UIImagePickerController()
                photoPicker.delegate = self
                photoPicker.allowsEditing = false
                photoPicker.sourceType = .photoLibrary
                minePickCSBVC = photoPicker
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
                alert.addButton("To Settings",backgroundColor:UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1)) {
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
        
        
       
        
        
    }
    
    @IBAction func fanhuiVAfgu(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
   @objc func quickEdSavemyEditeriufo() {
       
       guard let emiajkgVAF = shingNameVAF.text,
       let beirdsrtVAF = saymysekftVAF.text,
             let borenjkh = borneCatVAf.text,
       emiajkgVAF.count != 0,
       beirdsrtVAF.count != 0,
       borenjkh.count != 0 else {
          
           SVProgressHUD.show(withStatus: "Sorry, empty names ,birth or brief cannot be stored")
           return
       }
       
       let appearance = SCLAlertView.SCLAppearance(
           showCloseButton: false,
           circleBackgroundColor:UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1),
           contentViewColor:UIColor(red: 133/255, green: 116/255, blue: 88/255, alpha: 1),
           
           titleColor:UIColor.white
       )
       let alert = SCLAlertView(appearance: appearance)
       alert.iconTintColor = UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1)
       alert.addButton("Sure",backgroundColor:UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1)) {
           VAFTrendyLoadding.reasures.logingVAFIufo["vafniame"] = emiajkgVAF
           VAFTrendyLoadding.reasures.logingVAFIufo["vafsay"] = self.saymysekftVAF.text
           VAFTrendyLoadding.reasures.logingVAFIufo["vafBornDayh"] = self.borneCatVAf.text
          
               
           
           VAFTrendyLoadding.reasures.cacheVAFHead = self.shoingAvtorImgVAf.image
               
           SVProgressHUD.show()
          
           DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
               SVProgressHUD.showSuccess(withStatus: "Change info completed!")
               
               self.navigationController?.popViewController(animated: true)
              
           }))
       }
       
       alert.addButton("Cancel",backgroundColor:UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1)) {}
     
       alert.showInfo("Change Now?", subTitle: "Your current modified information will be synchronized to the server")
       
       
       
     
      
          
   }
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
     
        let image : UIImage? = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
       
        DispatchQueue.main.async {
            picker.dismiss(animated: true)
            self.shoingAvtorImgVAf.image = image
           
        }
        
    }
}
