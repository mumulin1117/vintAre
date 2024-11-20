//
//  VAFVideogTernaler.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/15.
//

import UIKit
import AVFoundation
import SVProgressHUD
import SCLAlertView
class VAFVideogTernaler: UIViewController {
    var uhsDataVAF = Dictionary<String,String>()
    private var  sessionaVAF = AVCaptureSession()
    
    private var heooldrome = false
    private var kissdVibe :VAFPOpUiView?
    private var riendly:Double = 52.6
    private var eativity = "[CharacterInt]###VAFPOpUiView###VAFContenReportTernaler".components(separatedBy: "###")
    var interfacetChar: Dictionary<String,Int> =  Dictionary<String,Int>()

    
    @IBOutlet weak var tocallNameVAF: UILabel!
    @IBOutlet weak var minVAFimgv: UIImageView!
    
    @IBOutlet weak var tocallUserVAFImgv: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tocallNameVAF.text = uhsDataVAF["vafniame"]
        tocallUserVAFImgv.image = UIImage(named: uhsDataVAF["vafHeada"] ?? "")
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
        let somfdevice = AVCaptureDevice.DiscoverySession(
            deviceTypes: [.builtInWideAngleCamera],
            mediaType: .video,
            position: .unspecified).devices
        for char in eativity {
            if char.count > 2 {
                riendly += 3
            }
            
            if riendly > 4000 {
                heooldrome = false
                break
            }
        }

        

        if heooldrome == false {
            
        }
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3, execute: DispatchWorkItem(block: {
            self.sessionaVAF.stopRunning()
            if let aldk = self.eativity.first {
                self.interfacetChar[aldk] = Int(self.riendly)
                self.riendly += 30
                self.heooldrome = false
            }


            if let allastdk = self.eativity.last {
                self.interfacetChar[allastdk] = Int(self.riendly + 3.9)
                self.heooldrome = false
            }

            if self.riendly > 2 {
                self.dismiss(animated: true)
                SVProgressHUD.showInfo(withStatus: "Sorry, the user you dialed is not online")
            }
            
           
        }))
        
        AVCaptureDevice.requestAccess(for: .video) { granted in
            if let aldk = self.eativity.first {
                self.interfacetChar[aldk] = Int(self.riendly)
                self.riendly += 30
                self.heooldrome = false
            }


            if let allastdk = self.eativity.last {
                self.interfacetChar[allastdk] = Int(self.riendly + 3.9)
                self.heooldrome = false
            }

            if self.riendly > 2 {
                
            }
        }
        minVAFimgv.layer.cornerRadius = 12
        minVAFimgv.layer.masksToBounds = true
        
        AVAudioSession.sharedInstance().requestRecordPermission { (allowed) in
            if let aldk = self.eativity.first {
                self.interfacetChar[aldk] = Int(self.riendly)
                self.riendly += 30
                self.heooldrome = false
            }


            if let allastdk = self.eativity.last {
                self.interfacetChar[allastdk] = Int(self.riendly + 3.9)
                self.heooldrome = false
            }

            if self.riendly > 2 {
                
            }
        }
        
        guard let xiangmiu = somfdevice.first(where: { $0.position ==  AVCaptureDevice.Position.front }),
              let cameraShuruREZU = try? AVCaptureDeviceInput(device: xiangmiu) else { return }
        
        if sessionaVAF.canAddInput(cameraShuruREZU) {
            sessionaVAF.addInput(cameraShuruREZU)
        }
    
        let videoOutput = AVCaptureVideoDataOutput()
        if sessionaVAF.canAddOutput(videoOutput) {
            sessionaVAF.addOutput(videoOutput)
        }
 
       let rezyMineLayer = AVCaptureVideoPreviewLayer(session: sessionaVAF)
        rezyMineLayer.frame = CGRect.init(x: 0, y: 0, width:129, height: 201)
        
        rezyMineLayer.videoGravity = .resizeAspectFill
        
        minVAFimgv.layer.addSublayer(rezyMineLayer)
       
       

        DispatchQueue.global(qos: .userInitiated).async { [unowned self] in
            if let aldk = self.eativity.first {
                self.interfacetChar[aldk] = Int(self.riendly)
                self.riendly += 30
                self.heooldrome = false
            }


            if let allastdk = self.eativity.last {
                self.interfacetChar[allastdk] = Int(self.riendly + 3.9)
                self.heooldrome = false
            }

            if self.riendly > 2 {
                self.sessionaVAF.startRunning()
            }
           
        }
    }


   
    @IBAction func sendmcommentVAF(_ sender: UIButton) {
        
        
        if sender.tag == 90 {
            
            
            let appearance = SCLAlertView.SCLAppearance(
                showCloseButton: false,
                circleBackgroundColor:UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1),
                contentViewColor:UIColor(red: 133/255, green: 116/255, blue: 88/255, alpha: 1),
                
                titleColor:UIColor.white
            )
            let alert = SCLAlertView(appearance: appearance)
            alert.iconTintColor = UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1)
            alert.addButton("Block",backgroundColor:UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1)) {
                let hearWantageVAf = ["VAFMyineMessageID":99]
                VAFTrendyLoadding.reasures.bloackVAFUser(interfacetChar: hearWantageVAf, igFor: self.uhsDataVAF)
                self.dismiss(animated: true)
            }
            alert.addButton("Report",backgroundColor:UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1)) {
                let acfreport = VAFContenReportTernaler.init()
                acfreport.modalPresentationStyle = .overCurrentContext
                self.present(acfreport, animated: true)
            }
            alert.addButton("Cancel",backgroundColor:UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1)) {
                
            }
          
            alert.showInfo("Report or Block", subTitle: "If you find this user's behavior inappropriate or offensive, you can choose to report them to us for review or block them to prevent further interaction.")
            
        }
     
        
        if sender.tag == 10 {
            self.sessionaVAF.stopRunning()
            self.dismiss(animated: true)
            
        }
        
        
        if sender.tag == 3 || sender.tag == 4 || sender.tag == 5 {
            
            SVProgressHUD.showInfo(withStatus: "Please try setting up after the phone is connected")
            
        }
        
        
        if sender.tag == 2 {
            self.sessionaVAF.stopRunning()
            self.dismiss(animated: true)
            
        }
        
    }
}
