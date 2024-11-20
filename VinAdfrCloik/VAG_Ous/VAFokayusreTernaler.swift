//
//  VAFokayusreTernaler.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/18.
//

import UIKit

class VAFokayusreTernaler: UIViewController {

    @IBOutlet weak var topbgVAFD: UIView!
    @IBOutlet weak var minAvoterVAF: UIImageView!
    
    @IBOutlet weak var usernamertVAF: UILabel!
    
    
    @IBOutlet weak var UidVAF: UILabel!
    
    
    
    @IBOutlet weak var brisffVAF: UILabel!
    
    
    
    @IBOutlet weak var editrtVAF: UIButton!
    
    
    
    @IBOutlet weak var ilikeVAF: UIView!
    
    
    @IBOutlet weak var likeFoloFAce: UIView!
    
    
    @IBOutlet weak var ballectVAF: UIView!
    
    
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
        aiCollvierVAF.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 320, right: 0)
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
        
        
        let ingf = VAFTrendyLoadding.reasures.logingVAFIufo.0
        
        minAvoterVAF.image = VAFTrendyLoadding.reasures.cacheVAFHead?.0
        
        usernamertVAF.text = ingf["vafniame"]
        
        UidVAF.text = "UID:  " + (ingf["vafIJID"] ?? "")
        brisffVAF.text = ingf["vafsay"]
        
        if let lblbcountmelike = ilikeVAF.viewWithTag(3) as? UILabel {
            lblbcountmelike.text = "\(VAFTrendyLoadding.reasures.logUsVAFLikes.count)"
        }
        
        
        if let lblbcountmelikeme = likeFoloFAce.viewWithTag(4) as? UILabel {
            lblbcountmelikeme.text = "\(VAFTrendyLoadding.reasures.LikelogUsVAFs.count)"
        }
        
        
        if let lblbcountmemoney = ballectVAF.viewWithTag(5) as? UILabel {
            
            
            lblbcountmemoney.text =   ingf["PayidCoin"] ?? "0"
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        topbgVAFD.layer.cornerRadius = 24
        topbgVAFD.layer.masksToBounds = true
        
        editrtVAF.layer.cornerRadius = 24
        editrtVAF.layer.masksToBounds = true
        
        
        ilikeVAF.layer.cornerRadius = 24
        ilikeVAF.layer.masksToBounds = true
        
        likeFoloFAce.layer.cornerRadius = 24
        likeFoloFAce.layer.masksToBounds = true
        
        ballectVAF.layer.cornerRadius = 24
        ballectVAF.layer.masksToBounds = true
        
        
        view.addSubview(self.singDataVAFView)
        singDataVAFView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(12)
            make.bottom.equalToSuperview()
            make.top.equalTo(topbgVAFD.snp.bottom).offset(60)
        }
    
        ilikeVAF.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(gotiuserMyINfoVAFTouvh(sender: ))))
        
        likeFoloFAce.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(gotiuserMyINfoVAFTouvh(sender: ))))
        
        ballectVAF.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(gotiuserMyINfoVAFTouvh(sender: ))))
    }
    
    
    @IBAction func userSiteNOwVAf(_ sender: Any) {
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        if skillsVAF.count < 20{
            skillsVAF.append("skillsVAF")
        }
        if skillsVAF.isEmpty == false {
            self.navigationController?.pushViewController(VAFhiSiteTernaer.init(), animated: true)
        }
        
    }
    
    
    
    
    @objc func gotiuserMyINfoVAFTouvh(sender: UITapGestureRecognizer) {
        if sender.view == ballectVAF {
            self.navigationController?.pushViewController(VAFShowingPAyTernaler.init(), animated: true)
        }
        
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        var stirnNewVAF = String(skillsVAF.suffix(4))
        if stirnNewVAF.contains("Bri") {
            stirnNewVAF.append(skillsVAF)
        }else{
            stirnNewVAF.append("Carefully")
        }
        
        if sender.view == ilikeVAF {
            
            let folooeo = VAFUaerlistTernaer.init(TypertLisrt: 1)
            
            self.navigationController?.pushViewController(folooeo, animated: true)
        }
        
        if sender.view == likeFoloFAce {
            let folooeo = VAFUaerlistTernaer.init(TypertLisrt: 0)
            if stirnNewVAF.count > 2 {
                self.navigationController?.pushViewController(folooeo, animated: true)
            }
            
        }
       
    }

    @IBAction func changerMyINfoVAFTouvh(_ sender: Any) {
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        if skillsVAF.count < 20{
            skillsVAF.append("skillsVAF")
        }
        if skillsVAF.isEmpty == false {
            self.navigationController?.pushViewController(VAFChangemeiusTernaler.init(), animated: true)
        }
       
    }
}


extension VAFokayusreTernaler:UICollectionViewDelegate,UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let uhsData = VAFTrendyLoadding.reasures.logingVAFIufo.0
        if uhsData["vafIJID"] == "345768" {
            return  1
        }
        return  0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let kaobit = collectionView.dequeueReusableCell(withReuseIdentifier: "VAFTHOmeShingCellID", for: indexPath) as! VAFTHOmeShingCell
        
        let uhsData = VAFTrendyLoadding.reasures.logingVAFIufo.0
       
        if uhsData["vafIJID"] == "345768" {
            kaobit.lorationTou.image = UIImage(named:uhsData["vafHeada"] ?? "")
            kaobit.namertVAF.text = uhsData["vafniame"]
            kaobit.atttudeVAF.isSelected = ((uhsData["iFlikeThisDYM"] ?? "0") == "1")
            
            let mingshonh = (uhsData["vafshowPic"] ?? "").components(separatedBy: ",")
            
            kaobit.tuONeVAF.image = UIImage(named:mingshonh[0])
            kaobit.tuTWOVAF.image = UIImage(named:mingshonh[1])
            kaobit.tuTHREEVAF.image = UIImage(named:mingshonh[2])
            kaobit.tuFOURVAF.image = UIImage(named:mingshonh[3])
            kaobit.collectiomertVAF.text = "Collected in " +  (uhsData["vafshowYear"] ?? "")
        }
       
        
        return kaobit
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let uhsData = VAFTrendyLoadding.reasures.logingVAFIufo.0
        
        let auDetaiDym = VAFDetailDyymstTernaler.init()
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        if skillsVAF.count < 20{
            skillsVAF.append("skillsVAF")
        }
        if skillsVAF.isEmpty == false {
            auDetaiDym.uhsDataVAF =  (uhsData,0)
        }
       
        self.navigationController?.pushViewController(auDetaiDym, animated: true)
        
    }
    
    
}
