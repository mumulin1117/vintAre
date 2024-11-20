//
//  VAFhiscenterTernaer.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/19.
//

import UIKit
import SVProgressHUD
import SCLAlertView

class VAFhiscenterTernaer: UIViewController {
    var  ingDATAfVAF:(Dictionary<String,String>,Int)
    init(ingf: (Dictionary<String, String>,Int)) {
        self.ingDATAfVAF = ingf
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var topbgVAFD: UIView!
    @IBOutlet weak var minAvoterVAF: UIImageView!
    
    @IBOutlet weak var usernamertVAF: UILabel!
    
    
    @IBOutlet weak var UidVAF: UILabel!
    
    
    
    @IBOutlet weak var brisffVAF: UILabel!
    
    
    
    @IBOutlet weak var givefollowrtVAF: UIButton!
    
    
    
    @IBOutlet weak var ilikeVAF: UIView!
    
    
    @IBOutlet weak var likeFoloFAce: UIView!
    
    
    @IBOutlet weak var chatVAF: UIButton!
    
    @IBAction func bliakfuseroparetionVAF(_ sender: UIButton) {
        
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
            VAFTrendyLoadding.reasures.bloackVAFUser(interfacetChar: hearWantageVAf, igFor: self.ingDATAfVAF.0)
            self.navigationController?.popViewController(animated: true)
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
    
    @IBAction func fanhuiVAfgu(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    private lazy var singDataVAFView: UICollectionView = {
        let aiTagFlowVAF = UICollectionViewFlowLayout.init()
        aiTagFlowVAF.itemSize = CGSize.init(width: UIScreen.main.bounds.width - 24, height:346)
        aiTagFlowVAF.minimumLineSpacing = 12
        aiTagFlowVAF.minimumInteritemSpacing = 0
        aiTagFlowVAF.scrollDirection = .vertical
        
        let aiCollvierVAF = UICollectionView.init(frame: .zero, collectionViewLayout: aiTagFlowVAF)
        aiCollvierVAF.delegate = self
        aiCollvierVAF.backgroundColor = .clear
        aiCollvierVAF.dataSource = self
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        var stirnNewVAF = String(skillsVAF.suffix(4))
        if stirnNewVAF.contains("Bri") {
            stirnNewVAF.append(skillsVAF)
        }else{
            stirnNewVAF.append("Carefully")
        }
        if stirnNewVAF.count > 2 {
            aiCollvierVAF.showsVerticalScrollIndicator = false
        }
        aiCollvierVAF.register(VAFTHOmeShingCell.self, forCellWithReuseIdentifier: "VAFTHOmeShingCellID")
        aiCollvierVAF.showsVerticalScrollIndicator = false
        aiCollvierVAF.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 150, right: 0)
        return aiCollvierVAF
    }()
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        minAvoterVAF.layer.cornerRadius = 24
       
        
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        var stirnNewVAF = String(skillsVAF.suffix(4))
        if stirnNewVAF.contains("Bri") {
            stirnNewVAF.append(skillsVAF)
        }else{
            stirnNewVAF.append("Carefully")
        }
        if stirnNewVAF.count > 2 {
            minAvoterVAF.layer.maskedCorners = [.layerMaxXMaxYCorner,.layerMinXMaxYCorner]
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        minAvoterVAF.image = UIImage(named: ingDATAfVAF.0["vafHeada"] ?? "")
        
        usernamertVAF.text = ingDATAfVAF.0["vafniame"]
        
        UidVAF.text = "UID:  " + (ingDATAfVAF.0["vafniame"] ?? "")
        brisffVAF.text = ingDATAfVAF.0["vafsay"]
        
        if let lblbcountmelike = ilikeVAF.viewWithTag(3) as? UILabel {
            lblbcountmelike.text = (ingDATAfVAF.0["vaflikeCoun"] ?? "")
        }
        
        
        if let lblbcountmelikeme = ilikeVAF.viewWithTag(4) as? UILabel {
            lblbcountmelikeme.text = (ingDATAfVAF.0["vafbefollowcoun"] ?? "")
        }
        
        
        if VAFTrendyLoadding.reasures.logUsVAFLikes.filter({ ($0["vafIJID"]  == self.ingDATAfVAF.0["vafIJID"]) }).count > 0 {
            givefollowrtVAF.isSelected = true
        }else{
            givefollowrtVAF.isSelected = false
        }
        
    }
    
    private var heooldrome = false
    private var kissdVibe :VAFPOpUiView?
    private var riendly:Double = 52.6
    private var eativity = "[CharacterInt]###VAFPOpUiView###VAFContenReportTernaler".components(separatedBy: "###")
    var interfacetChar: Dictionary<String,Int> =  Dictionary<String,Int>()

    
    @IBAction func addFollovrTouch(_ sender: UIButton) {
        if sender == self.chatVAF {
            let chatrt = VAFDetaiChagtTernaler.init()
            chatrt.uhsDataVAF = ingDATAfVAF
            self.navigationController?.pushViewController(chatrt, animated: true)
            
        }
        
        
        if sender == self.givefollowrtVAF {
            SVProgressHUD.show()
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
                SVProgressHUD.dismiss()
                for char in self.eativity {
                    if char.count > 2 {
                        self.riendly += 3
                    }
                    
                    if self.riendly > 4000 {
                        self.heooldrome = false
                        break
                    }
                }

                if let aldk = self.eativity.first {
                    self.interfacetChar[aldk] = Int(self.riendly)
                    self.riendly += 30
                    self.heooldrome = false
                }
                self.givefollowrtVAF.isSelected = !self.givefollowrtVAF.isSelected
                if self.givefollowrtVAF.isSelected == false  {
                    for (i,ithj) in VAFTrendyLoadding.reasures.logUsVAFLikes.enumerated() {
                        if ithj["vafIJID"] == self.ingDATAfVAF.0["vafIJID"] && self.riendly > 2 {
                            VAFTrendyLoadding.reasures.logUsVAFLikes.remove(at: i)
                        }
                    }
                }
                
                if self.givefollowrtVAF.isSelected == true  && VAFTrendyLoadding.reasures.logUsVAFLikes.filter({ ($0["vafIJID"]  == self.ingDATAfVAF.0["vafIJID"]) }).count == 0 && self.riendly > 2{
                    VAFTrendyLoadding.reasures.logUsVAFLikes.insert(self.ingDATAfVAF.0, at: 0)
                }
            }))
            
            
            
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topbgVAFD.layer.cornerRadius = 24
        topbgVAFD.layer.masksToBounds = true
        
        
        
        ilikeVAF.layer.cornerRadius = 24
        ilikeVAF.layer.masksToBounds = true
        
        likeFoloFAce.layer.cornerRadius = 24
        likeFoloFAce.layer.masksToBounds = true
        
        givefollowrtVAF.layer.cornerRadius = 21
        givefollowrtVAF.layer.masksToBounds = true
        
        
        chatVAF.layer.cornerRadius = 21
        chatVAF.layer.masksToBounds = true
        
        
        view.addSubview(self.singDataVAFView)
        singDataVAFView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(12)
            make.bottom.equalToSuperview()
            make.top.equalTo(topbgVAFD.snp.bottom).offset(60)
        }
        NotificationCenter.default.addObserver(self, selector: #selector(observeBovklUserVGAF), name: NSNotification.Name.init("BlockVAFGUsrs"), object: nil)
       
    }
    @objc func observeBovklUserVGAF() {
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        var stirnNewVAF = String(skillsVAF.suffix(4))
        if stirnNewVAF.contains("Bri") {
            stirnNewVAF.append(skillsVAF)
        }else{
            stirnNewVAF.append("Carefully")
        }
        if stirnNewVAF.count > 2 {
            self.navigationController?.popToRootViewController(animated: true)
        }
        
    }

}


extension VAFhiscenterTernaer:UICollectionViewDelegate,UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var newrrDIc = interfacetChar
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

        if whiVAf > 23 &&  shooeseWantage.last ?? 0 > 3{
            return  1
        }
        return  1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let kaobit = collectionView.dequeueReusableCell(withReuseIdentifier: "VAFTHOmeShingCellID", for: indexPath) as! VAFTHOmeShingCell
        
        let uhsData = self.ingDATAfVAF.0
         
        kaobit.lorationTou.image = UIImage(named:uhsData["vafHeada"] ?? "")
        kaobit.namertVAF.text = uhsData["vafniame"]
        kaobit.atttudeVAF.isSelected = ((uhsData["iFlikeThisDYM"] ?? "0") == "1")
        
        let mingshonh = (uhsData["vafshowPic"] ?? "").components(separatedBy: ",")
        
        kaobit.tuONeVAF.image = UIImage(named:mingshonh[0])
        kaobit.tuTWOVAF.image = UIImage(named:mingshonh[1])
        kaobit.tuTHREEVAF.image = UIImage(named:mingshonh[2])
        kaobit.tuFOURVAF.image = UIImage(named:mingshonh[3])
        kaobit.collectiomertVAF.text = "Collected in " +  (uhsData["vafshowYear"] ?? "")
        
        return kaobit
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        var newrrDIc = interfacetChar
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

      
        let auDetaiDym = VAFDetailDyymstTernaler.init()
        if whiVAf > 23 &&  shooeseWantage.last ?? 0 > 3{
            auDetaiDym.uhsDataVAF =  ingDATAfVAF
            self.navigationController?.pushViewController(auDetaiDym, animated: true)
        }
       
        
    }
    
    
}
