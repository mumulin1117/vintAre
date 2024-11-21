//
//  VAFDetailDyymstTernaler.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/15.
//

import UIKit
import SVProgressHUD
extension Double {
    private  var hearWantage:CGFloat{
        return 44.0
    }
    
    var xxxxxxVAF: CGFloat {
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        if skillsVAF.count < 20{
            skillsVAF.append("skillsVAF")
        }
        if skillsVAF.isEmpty == false {
            return UIScreen.main.bounds.width * CGFloat(self) / 375.0
        }
        return UIScreen.main.bounds.width * CGFloat(self) / 375.0
    }
    
    var yyyyyyVAF: CGFloat {
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        if skillsVAF.count < 20{
            skillsVAF.append("skillsVAF")
        }
        if skillsVAF.isEmpty == false {
            return UIScreen.main.bounds.height * CGFloat(self) / 812.0
        }
        return UIScreen.main.bounds.height * CGFloat(self) / 812.0
    }
}

class VAFDetailDyymstTernaler: UIViewController {
    private var heooldrome = false
    private var kissdVibe :VAFPOpUiView?
    private var riendly:Double = 52.6
    private var eativity = "[CharacterInt]###VAFPOpUiView###VAFContenReportTernaler".components(separatedBy: "###")
    var interfacetChar: (Dictionary<String,Int>,Int) =  (Dictionary<String,Int>(),0)
    
    @IBOutlet weak var wavtageDescLblVAF: UILabel!
    
    
    var uhsDataVAF = (Dictionary<String,String>(),0)
    
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
        
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        if skillsVAF.count < 20{
            skillsVAF.append("skillsVAF")
        }
        if skillsVAF.isEmpty == false {
            picbgViewVAF.layer.cornerRadius = 24
            picbgViewVAF.layer.maskedCorners = [.layerMaxXMaxYCorner,.layerMinXMaxYCorner]
        }
        
    }
    
    @objc func usercentrGoonVAF()  {
       
        let datefet = uhsDataVAF
        
        self.navigationController?.pushViewController(VAFhiscenterTernaer.init(ingf: datefet), animated: true)
        
     }
    override func viewDidLoad() {
        super.viewDidLoad()
        
                                         
        if uhsDataVAF.0["vafIJID"] == VAFTrendyLoadding.reasures.logingVAFIufo.0["vafIJID"]{
            self.videotVAF.isHidden  = true
            alertgf.isHidden = true
            atttudeVAF.isHidden = true
            lorationTou.isUserInteractionEnabled = false
        }else{
            lorationTou.isUserInteractionEnabled = true
            lorationTou.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(usercentrGoonVAF)))
           
        }
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
        atttudeVAF.setTitle((uhsDataVAF.0["heartForerDym"] ?? "0"), for: .normal)
        atttudeVAF.setImage(UIImage.init(named: "vafIo_emptylike"), for: .normal)
        atttudeVAF.setImage(UIImage.init(named: "vafIo_like"), for: .selected)
        atttudeVAF.isSelected = ((uhsDataVAF.0["iFlikeThisDYM"] ?? "0") == "1")
        
        lorationTou.image = UIImage(named:uhsDataVAF.0["vafHeada"] ?? "")
        namertVAF.text = uhsDataVAF.0["vafniame"]
        
        
        let mingshonh = (uhsDataVAF.0["vafshowPic"] ?? "").components(separatedBy: ",")
        
        topimageVieOWNr.image = UIImage(named:mingshonh[0])
        imgShongeVAFTWO.image = UIImage(named:mingshonh[1])
        imgShongeVAFThree.image = UIImage(named:mingshonh[2])
        imgShongeVAFFour.image = UIImage(named:mingshonh[3])
        collectiomertVAF.text = "Collected in " +  (uhsDataVAF.0["vafshowYear"] ?? "")
        
        
        wavtageDescLblVAF.text =  (uhsDataVAF.0["vafshowBrief"] ?? "")
        
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
            make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 19)
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

    @IBOutlet weak var alertgf: UIButton!
    
    @IBAction func backVAF(_ sender: Any) {
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        if skillsVAF.count < 20{
            skillsVAF.append("skillsVAF")
        }
        if skillsVAF.isEmpty == false {
            self.navigationController?.popViewController(animated: true)
        }
        
        
    }
    
    @IBAction func jubaREportVAf(_ sender: Any) {
        let acfreport = VAFContenReportTernaler.init()
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        if skillsVAF.count < 20{
            skillsVAF.append("skillsVAF")
        }
        if skillsVAF.isEmpty == false {
            acfreport.modalPresentationStyle = .overCurrentContext
        }
       
        self.present(acfreport, animated: true)
    }
    
    
    
    @objc func jubaTouchBeginVAf(vafsender: UIButton) {
        if vafsender == videotVAF {
            
            let cafllMesgVaf = VAFDetaiChagtTernaler.init()
            cafllMesgVaf.uhsDataVAF = uhsDataVAF
            
            self.navigationController?.pushViewController(cafllMesgVaf, animated: true)
        }
        
        
        if vafsender == atttudeVAF {
            SVProgressHUD.show()
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0, execute: DispatchWorkItem(block: {
                var newrrDIc = Dictionary<String,Int>()
                var shooeseWantage = [23,56,75,43]
                var whiVAf = 33
                shooeseWantage.append(whiVAf)
                for char in shooeseWantage {
                    if char > 2 {
                        whiVAf += 3
                    }
                    
                    if whiVAf > 40 {
                        newrrDIc["ChangeVAFChatItemUI"] = whiVAf
                        break
                    }
                }

              
                SVProgressHUD.dismiss()
                if whiVAf > 23 &&  shooeseWantage.last ?? 0 > 3{
                    self.atttudeVAF.isSelected = !self.atttudeVAF.isSelected
                }
                
                
                if self.atttudeVAF.isSelected {
                    SVProgressHUD.showSuccess(withStatus: "You have expressed your like!")
                    self.atttudeVAF.setTitle("1", for: .normal)
                }else{
                    self.atttudeVAF.setTitle("0", for: .normal)
                }
                let hearWantageVAf = ["VAFMyineMessageID":99]
                VAFTrendyLoadding.reasures.renewDYMMeAttitude(interfacetChar: hearWantageVAf, ForVAF: self.uhsDataVAF.0, AttitudeIOPP: self.atttudeVAF.isSelected)
                
                
                return
            }))
        }
        
        if vafsender == commenrtVAF {
            let commmentVC = VAFCommentTernaler.init()
//            commmentVC.modalPresentationStyle = .overCurrentContext
            self.present(commmentVC, animated: true)
        }
        
        if vafsender == AIButtonhVAF {
            var vingfCoint =  Int(VAFTrendyLoadding.reasures.logingVAFIufo.0["PayidCoin"] ?? "0") ?? 0
            if vingfCoint < 50 {
                let alert = UINavigationController.init(rootViewController:  VAFAIPAyTernaler.init())
                alert.navigationBar.isHidden = true
                alert.modalPresentationStyle = .overCurrentContext
                self.present(alert, animated: true)
                return
            }
            
            
            vingfCoint -= 50
            VAFTrendyLoadding.reasures.logingVAFIufo.0["PayidCoin"] = "\(vingfCoint)"
            
            let aIDEF = VAFAIDetailTernaler.init()
            aIDEF.uhsData = self.uhsDataVAF
            self.navigationController?.pushViewController(aIDEF, animated: true)
            
        }
       
       
        
    }
    
}
