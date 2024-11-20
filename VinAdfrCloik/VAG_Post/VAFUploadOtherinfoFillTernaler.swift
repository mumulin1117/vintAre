//
//  VAFUploadOtherinfoFillTernaler.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/18.
//

import UIKit
import SCLAlertView
import SVProgressHUD
class VAFUploadOtherinfoFillTernaler: UIViewController,UINavigationControllerDelegate, UIImagePickerControllerDelegate,UITextViewDelegate  {
    
    var recordTapBut:Int = 0
    
    var minePickCSBVC:UIImagePickerController?
    
    @IBOutlet weak var cansee0: UIButton!
    @IBOutlet weak var cansee1: UIButton!
    @IBOutlet weak var cansee2: UIButton!
    
    private var heooldrome = false
    private var kissdVibe :VAFPOpUiView?
    private var riendly:Double = 52.6
    private var eativity = "[CharacterInt]###VAFPOpUiView###VAFContenReportTernaler".components(separatedBy: "###")
    var interfacetChar: Dictionary<String,Int> =  Dictionary<String,Int>()

    
    var imagetResord = ["image0":false,"image1":false,"image2":false]
    
    
    
    var CoverBigVAF:UIImage
    init(CoverBigVAF: UIImage) {
        self.CoverBigVAF = CoverBigVAF
        super.init(nibName: nil, bundle: nil)
    }
    
    @IBOutlet weak var topimasgeview: UIImageView!
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var timeColVAFTexf: UITextView!
    
    
    @IBOutlet weak var descColVAFTexf: UITextView!
    
    
    
    @IBAction func baldikgLAstVAF(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func upOtherDetailVAF(_ sender: UIButton) {
    
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let photoPicker = UIImagePickerController()
            photoPicker.delegate = self
            photoPicker.allowsEditing = false
            photoPicker.sourceType = .photoLibrary
            minePickCSBVC = photoPicker
            self.present(self.minePickCSBVC!, animated: true, completion: nil)
            if sender == self.cansee0{
                recordTapBut = 0
            }else if sender == self.cansee1{
                recordTapBut = 1
            }else if sender == self.cansee2{
                recordTapBut = 2
            }
          
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
            alert.addButton("Cancel") {
                
            }
           
          
            alert.showInfo("No album permission", subTitle: "Please open the album permission in the settings before uploading pictures")
            
        }
        
    }
    
    
    @IBOutlet weak var nextStermo: UIButton!
    
    
    
    @IBAction func postVAFjik(_ sender: UIButton) {
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


        for (ret,word) in wordArrayVAF.enumerated() {
            if let count = mindedVAF[word] {
                mindedVAF[word] = count + ret
            } else {
                mindedVAF[word] = 1
            }
        }

       
        guard let colTime = timeColVAFTexf.text,colTime.count != 0, "Indicate when you collected this precious vintage item.".contains(colTime) == false else {
            SVProgressHUD.showInfo(withStatus: "Collection time must be filled in！")
            return
        }
        guard let descCloi = descColVAFTexf.text,descCloi.count != 0, "Tell the story and features of your vintage item through vivid words. Make others fall in love with it.".contains(descCloi) == false else {
            SVProgressHUD.showInfo(withStatus: "Description must be filled in！")
            return
        }
        
        if self.imagetResord["image0"] == false || self.imagetResord["image1"] == false || self.imagetResord["image2"] == false {
            SVProgressHUD.showInfo(withStatus: "All three Matching Pictures must be uploaded！")
            return
        }
        
        
        SVProgressHUD.show()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            SVProgressHUD.showSuccess(withStatus: "Upload successful, Please be patient and wait for the review....")
            if mindedVAF.keys.count > 2 {
                self.navigationController?.popToRootViewController(animated: true)
                
            }

            if stirnNewVAF.isEmpty == false {
                
            }
           
        }))
        
        
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeColVAFTexf.contentInset = UIEdgeInsets(top: 5, left: 12, bottom: 5, right: 12)
        timeColVAFTexf.layer.cornerRadius = 16
        timeColVAFTexf.layer.masksToBounds  = true
        
        timeColVAFTexf.delegate = self
        descColVAFTexf.delegate = self
        
        descColVAFTexf.contentInset = UIEdgeInsets(top: 5, left: 12, bottom: 5, right: 12)
        descColVAFTexf.layer.cornerRadius = 16
        descColVAFTexf.layer.masksToBounds  = true
      
        
        topimasgeview.image = CoverBigVAF
        topimasgeview.layer.cornerRadius = 16
        topimasgeview.layer.masksToBounds = true
        
        nextStermo.layer.cornerRadius = 16
        nextStermo.layer.masksToBounds = true
    }

    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
     
        let image : UIImage? = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
       
        DispatchQueue.main.async {
            picker.dismiss(animated: true)
            
            if self.recordTapBut == 0{
                self.imagetResord["image0"] = true
                self.cansee0.setImage(image, for: .normal)
            }else if self.recordTapBut == 1{
                self.imagetResord["image1"] = true
                self.cansee1.setImage(image, for: .normal)
            }else if self.recordTapBut == 2{
                self.imagetResord["image2"] = true
                self.cansee2.setImage(image, for: .normal)
            }
            
           
           
        }
        
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView == self.descColVAFTexf {
            textView.text = nil
        }
        
        
        if textView == self.timeColVAFTexf {
            timeColVAFTexf.text = nil
        }
    }
    
}
