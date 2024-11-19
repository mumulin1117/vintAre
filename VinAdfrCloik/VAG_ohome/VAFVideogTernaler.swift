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
    var uhsData = Dictionary<String,String>()
    private var  sesrgREZUion = AVCaptureSession()
    
    @IBOutlet weak var tocallNameVAF: UILabel!
    @IBOutlet weak var minVAFimgv: UIImageView!
    
    @IBOutlet weak var tocallUserVAFImgv: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tocallNameVAF.text = uhsData["vafniame"]
        tocallUserVAFImgv.image = UIImage(named: uhsData["vafHeada"] ?? "")
        
        let somfdevice = AVCaptureDevice.DiscoverySession(
            deviceTypes: [.builtInWideAngleCamera],
            mediaType: .video,
            position: .unspecified).devices
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3, execute: DispatchWorkItem(block: {
            self.sesrgREZUion.stopRunning()
            self.dismiss(animated: true)
            SVProgressHUD.showInfo(withStatus: "Sorry, the user you dialed is not online")
           
        }))
        
        AVCaptureDevice.requestAccess(for: .video) { granted in
            
        }
        minVAFimgv.layer.cornerRadius = 12
        minVAFimgv.layer.masksToBounds = true
        
        AVAudioSession.sharedInstance().requestRecordPermission { (allowed) in
            
        }
        
        guard let xiangmiu = somfdevice.first(where: { $0.position ==  AVCaptureDevice.Position.front }),
              let cameraShuruREZU = try? AVCaptureDeviceInput(device: xiangmiu) else { return }
        
        if sesrgREZUion.canAddInput(cameraShuruREZU) {
            sesrgREZUion.addInput(cameraShuruREZU)
        }
    
        let videoOutput = AVCaptureVideoDataOutput()
        if sesrgREZUion.canAddOutput(videoOutput) {
            sesrgREZUion.addOutput(videoOutput)
        }
 
       let rezyMineLayer = AVCaptureVideoPreviewLayer(session: sesrgREZUion)
        rezyMineLayer.frame = CGRect.init(x: 0, y: 0, width:129, height: 201)
        
        rezyMineLayer.videoGravity = .resizeAspectFill
        
        minVAFimgv.layer.addSublayer(rezyMineLayer)
       
       

        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
            self?.sesrgREZUion.startRunning()
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
                VAFTrendyLoadding.reasures.bloackVAFUser(igFor: self.uhsData)
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
            self.sesrgREZUion.stopRunning()
            self.dismiss(animated: true)
            
        }
        
        
        if sender.tag == 3 || sender.tag == 4 || sender.tag == 5 {
            
            SVProgressHUD.showInfo(withStatus: "Please try setting up after the phone is connected")
            
        }
        
        
        if sender.tag == 2 {
            self.sesrgREZUion.stopRunning()
            self.dismiss(animated: true)
            
        }
        
    }
}
