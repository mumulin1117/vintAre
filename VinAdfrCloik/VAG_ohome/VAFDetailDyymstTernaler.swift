//
//  VAFDetailDyymstTernaler.swift
//  VinAdfrCloik
//
//  Created by mumu on 2024/11/15.
//

import UIKit
import SVProgressHUD
extension Double {
    
    var xxxxxxVAF: CGFloat {
        return UIScreen.main.bounds.width * CGFloat(self) / 375.0
    }
    
    var yyyyyyVAF: CGFloat {
        return UIScreen.main.bounds.height * CGFloat(self) / 812.0
    }
}

class VAFDetailDyymstTernaler: UIViewController {
    
    var uhsData = Dictionary<String,String>()
    
    @IBOutlet weak var lorationTou: UIImageView!
    
    @IBOutlet weak var topimageVieOWNr: UIImageView!
    
    @IBOutlet weak var namertVAF: UILabel!
    
    @IBOutlet weak var picbgViewVAF: UIView!
    
    let imgShongeVAFTWO = UIImageView.init()
    let imgShongeVAFThree = UIImageView.init()
    let imgShongeVAFFour = UIImageView.init()
    
    let boottimContrFunView = UIView.init()
    
    let videotVAF = UIButton.init()
    let atttudeVAF = UIButton.init()
    let commenrtVAF = UIButton.init()
    
    
    let AIButtonhVAF = UIButton.init()
    @IBOutlet weak var collectiomertVAF: UILabel!
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        topimageVieOWNr.layer.cornerRadius = 24
        topimageVieOWNr.layer.maskedCorners = [.layerMaxXMaxYCorner,.layerMinXMaxYCorner]
        
        
        picbgViewVAF.layer.cornerRadius = 24
        picbgViewVAF.layer.maskedCorners = [.layerMaxXMaxYCorner,.layerMinXMaxYCorner]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AIButtonhVAF.addTarget(self, action: #selector(jubaTouchBeginVAf(vafsender:)), for: .touchUpInside)
        videotVAF.addTarget(self, action: #selector(jubaTouchBeginVAf(vafsender:)), for: .touchUpInside)
        atttudeVAF.addTarget(self, action: #selector(jubaTouchBeginVAf(vafsender:)), for: .touchUpInside)
        commenrtVAF.addTarget(self, action: #selector(jubaTouchBeginVAf(vafsender:)), for: .touchUpInside)
        
        
        
        videotVAF.setImage(UIImage.init(named: "vaf_Video call"), for: .normal)
        commenrtVAF.setImage(UIImage.init(named: "vaf_commenrt"), for: .normal)
        commenrtVAF.titleLabel?.font = UIFont(name: "HarmonyOS Sans", size: 14)
        commenrtVAF.setTitleColor(UIColor(red: 1, green: 0.9, blue: 0.76, alpha: 1), for: .normal)
        commenrtVAF.setTitle("0", for: .normal)
        
        lorationTou.layer.cornerRadius = 12
        lorationTou.layer.masksToBounds = true
        atttudeVAF.titleLabel?.font = UIFont(name: "HarmonyOS Sans", size: 14)
        atttudeVAF.setTitleColor(UIColor(red: 1, green: 0.9, blue: 0.76, alpha: 1), for: .normal)
        atttudeVAF.setTitle((uhsData["heartForerDym"] ?? "0"), for: .normal)
        atttudeVAF.setImage(UIImage.init(named: "vafIo_emptylike"), for: .normal)
        atttudeVAF.setImage(UIImage.init(named: "vafIo_like"), for: .selected)
        atttudeVAF.isSelected = ((uhsData["iFlikeThisDYM"] ?? "0") == "1")
        
        lorationTou.image = UIImage(named:uhsData["vafHeada"] ?? "")
        namertVAF.text = uhsData["vafniame"]
        
        
        let mingshonh = (uhsData["vafshowPic"] ?? "").components(separatedBy: ",")
        
        topimageVieOWNr.image = UIImage(named:mingshonh[0])
        imgShongeVAFTWO.image = UIImage(named:mingshonh[1])
        imgShongeVAFThree.image = UIImage(named:mingshonh[2])
        imgShongeVAFFour.image = UIImage(named:mingshonh[3])
        collectiomertVAF.text = "Collected in " +  (uhsData["vafshowYear"] ?? "")
        
         
        
        
        imgShongeVAFTWO.layer.masksToBounds = true
        imgShongeVAFTWO.contentMode = .scaleToFill
        imgShongeVAFTWO.layer.cornerRadius = 24
        
        imgShongeVAFThree.contentMode = .scaleToFill
        imgShongeVAFThree.layer.cornerRadius = 24
        imgShongeVAFThree.layer.masksToBounds = true
        
        imgShongeVAFFour.contentMode = .scaleToFill
        imgShongeVAFFour.layer.cornerRadius = 24
        imgShongeVAFFour.layer.masksToBounds = true
        
        boottimContrFunView.layer.cornerRadius = 24
        boottimContrFunView.layer.masksToBounds = true
        boottimContrFunView.backgroundColor = UIColor(red: 0.11, green: 0.07, blue: 0.02, alpha: 1)
        
        
        
        picbgViewVAF.snp.makeConstraints { make in
            make.leading.trailing.top.equalToSuperview()
            make.height.equalTo(481.yyyyyyVAF)
           
        }
        topimageVieOWNr.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(12)
            make.height.equalTo(344.yyyyyyVAF)
            make.top.equalToSuperview()
        }
        picbgViewVAF.addSubview(imgShongeVAFTWO)
        picbgViewVAF.addSubview(imgShongeVAFThree)
        picbgViewVAF.addSubview(imgShongeVAFFour)
        
        
        view.addSubview(boottimContrFunView)
        imgShongeVAFTWO.snp.makeConstraints { make in
            make.width.equalTo((UIScreen.main.bounds.width - 4*12)/3)
            make.height.equalTo(109.yyyyyyVAF)
            make.leading.equalToSuperview().offset(12)
            make.top.equalTo(topimageVieOWNr.snp.bottom).offset(12.yyyyyyVAF)
        }
        
        imgShongeVAFThree.snp.makeConstraints { make in
            make.width.equalTo((UIScreen.main.bounds.width - 4*12)/3)
            make.height.equalTo(109.yyyyyyVAF)
            make.centerX.equalToSuperview()
            make.top.equalTo(topimageVieOWNr.snp.bottom).offset(12.yyyyyyVAF)
        }
        
        
        imgShongeVAFFour.snp.makeConstraints { make in
            make.width.equalTo((UIScreen.main.bounds.width - 4*12)/3)
            make.height.equalTo(109.yyyyyyVAF)
            make.trailing.equalToSuperview().inset(12)
            make.top.equalTo(topimageVieOWNr.snp.bottom).offset(12.yyyyyyVAF)
        }
        
        boottimContrFunView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(29.xxxxxxVAF)
            make.width.equalTo(210.xxxxxxVAF)
            make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 32)
            make.height.equalTo(60)
        }
        
        
        
        AIButtonhVAF.setImage(UIImage.init(named: "Vintage AI Stylist"), for: .normal)
        view.addSubview(AIButtonhVAF)
        AIButtonhVAF.snp.makeConstraints { make in
            make.width.equalTo(110.xxxxxxVAF)
            make.height.equalTo(56.xxxxxxVAF)
            make.centerY.equalTo(boottimContrFunView)
            make.trailing.equalToSuperview().inset(18.xxxxxxVAF)
        }
        
        
        boottimContrFunView.addSubview(self.atttudeVAF)
        boottimContrFunView.addSubview(self.commenrtVAF)
        boottimContrFunView.addSubview(self.videotVAF)
        
        atttudeVAF.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.width.equalTo(70.xxxxxxVAF)
            make.height.equalTo(60)
            make.centerY.equalToSuperview()
        }
        
        commenrtVAF.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(70.xxxxxxVAF)
            make.height.equalTo(60)
            make.centerY.equalToSuperview()
        }
        
        
        videotVAF.snp.makeConstraints { make in
            make.trailing.equalToSuperview()
            make.width.equalTo(70.xxxxxxVAF)
            make.height.equalTo(60)
            make.centerY.equalToSuperview()
        }
        NotificationCenter.default.addObserver(self, selector: #selector(banftiToLaerVAF), name: NSNotification.Name.init("BlockVAFGUsrs"), object: nil)
        
        
    }
    @objc func banftiToLaerVAF() {
        self.navigationController?.popViewController(animated: true)
    }


    @IBAction func backVAF(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func jubaREportVAf(_ sender: Any) {
        let acfreport = VAFContenReportTernaler.init()
        acfreport.modalPresentationStyle = .overCurrentContext
        self.present(acfreport, animated: true)
    }
    
    
    
    @objc func jubaTouchBeginVAf(vafsender: UIButton) {
        if vafsender == videotVAF {
            
            let cafllMesgVaf = VAFDetaiChagtTernaler.init()
            cafllMesgVaf.uhsData = self.uhsData
            
            self.navigationController?.pushViewController(cafllMesgVaf, animated: true)
        }
        
        
        if vafsender == atttudeVAF {
            SVProgressHUD.show()
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0, execute: DispatchWorkItem(block: {
                SVProgressHUD.dismiss()
                self.atttudeVAF.isSelected = !self.atttudeVAF.isSelected
                if self.atttudeVAF.isSelected {
                    SVProgressHUD.showSuccess(withStatus: "You have expressed your like!")
                    self.atttudeVAF.setTitle("1", for: .normal)
                }else{
                    self.atttudeVAF.setTitle("0", for: .normal)
                }
                
                VAFTrendyLoadding.reasures.renewDYMMeAttitude(ForVAF: self.uhsData, AttitudeIOPP: self.atttudeVAF.isSelected)
                
                
                return
            }))
        }
        
        if vafsender == commenrtVAF {
            let commmentVC = VAFCommentTernaler.init()
//            commmentVC.modalPresentationStyle = .overCurrentContext
            self.present(commmentVC, animated: true)
        }
        
        if vafsender == AIButtonhVAF {
            var vingfCoint =  Int(VAFTrendyLoadding.reasures.logingVAFIufo["PayidCoin"] ?? "0") ?? 0
            if vingfCoint < 50 {
                let alert = UINavigationController.init(rootViewController:  VAFAIPAyTernaler.init())
                alert.navigationBar.isHidden = true
                alert.modalPresentationStyle = .overCurrentContext
                self.present(alert, animated: true)
                return
            }
            
            
            vingfCoint -= 50
            VAFTrendyLoadding.reasures.logingVAFIufo["PayidCoin"] = "\(vingfCoint)"
            
            let aIDEF = VAFAIDetailTernaler.init()
            aIDEF.uhsData = self.uhsData
            self.navigationController?.pushViewController(aIDEF, animated: true)
            
        }
       
       
        
    }
    
}
