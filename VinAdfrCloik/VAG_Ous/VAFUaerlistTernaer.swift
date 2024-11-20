//
//  VAFUaerlistTernaer.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/19.
//

import UIKit
import SVProgressHUD
class VAFUaerlistTernaer: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource {
    

    @IBOutlet weak var fansBurttonVAF: UIButton!
    
    @IBOutlet weak var followedBurttonVAF: UIButton!
    
    @IBOutlet weak var blockTitleVAF: UILabel!
    
    
    @IBOutlet weak var indicatarViewVAf: UIView!
    
    @IBAction func dataTytpeChangerd(_ sender: UIButton) {
        if sender == fansBurttonVAF {
            fansBurttonVAF.isSelected = true
            followedBurttonVAF.isSelected = false
            userdatalisdtVAF = VAFTrendyLoadding.reasures.logUsVAFLikes
            indicatarViewVAf.center.x = fansBurttonVAF.center.x
        }
        
        
        if sender == followedBurttonVAF {
            fansBurttonVAF.isSelected = false
            followedBurttonVAF.isSelected = true
            userdatalisdtVAF = VAFTrendyLoadding.reasures.LikelogUsVAFs
            indicatarViewVAf.center.x = followedBurttonVAF.center.x
        }
        SVProgressHUD.show()
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        var stirnNewVAF = String(skillsVAF.suffix(4))
        if stirnNewVAF.contains("Bri") {
            stirnNewVAF.append(skillsVAF)
        }else{
            stirnNewVAF.append("Carefully")
        }

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0, execute: DispatchWorkItem(block: {
            SVProgressHUD.dismiss()
            
            var mindedVAF = [String: Int]()
            let wordArrayVAF = skillsVAF.components(separatedBy: " ")


            for (ret,word) in wordArrayVAF.enumerated() {
                if let count = mindedVAF[word] {
                    mindedVAF[word] = count + ret
                } else {
                    mindedVAF[word] = 1
                }
            }

            if mindedVAF.keys.count > 2 {
                self.singDataVAFView.reloadData()
            }
           
            return
        }))
        
        
    }
    
    
    var TypertLisrt:Int
    
    
    var userdatalisdtVAF:Array<Dictionary<String,String>> = Array<Dictionary<String,String>>()
    
    init( TypertLisrt: Int) {
       
        self.TypertLisrt = TypertLisrt
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var singDataVAFView: UICollectionView = {
        let aiTagFlowVAF = UICollectionViewFlowLayout.init()
        if TypertLisrt != 2 {
            aiTagFlowVAF.itemSize = CGSize.init(width: (UIScreen.main.bounds.width - 36)/2, height:180)
        }else{
            aiTagFlowVAF.itemSize = CGSize.init(width: (UIScreen.main.bounds.width - 36)/2, height:232)
        }
       
        aiTagFlowVAF.minimumLineSpacing = 12
        aiTagFlowVAF.minimumInteritemSpacing = 0
        aiTagFlowVAF.scrollDirection = .vertical
        
        let aiCollvierVAF = UICollectionView.init(frame: .zero, collectionViewLayout: aiTagFlowVAF)
        aiCollvierVAF.delegate = self
        aiCollvierVAF.backgroundColor = .clear
        aiCollvierVAF.dataSource = self
        aiCollvierVAF.register(VAFUaerlistTerCell.self, forCellWithReuseIdentifier: "VAFUaerlistTerCellID")
        aiCollvierVAF.showsVerticalScrollIndicator = false
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
        aiCollvierVAF.contentInset = UIEdgeInsets(top: 0, left: 12, bottom: 150, right: 12)
        return aiCollvierVAF
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        indicatarViewVAf.layer.cornerRadius = 2
        indicatarViewVAf.layer.masksToBounds = true
        
        changeSeltd()
        SVProgressHUD.show()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0, execute: DispatchWorkItem(block: {
            var skillsVAF = "Brilliant Colors  Carefully Selected Items"
            skillsVAF.removeLast()
            var stirnNewVAF = String(skillsVAF.suffix(4))
            if stirnNewVAF.contains("Bri") {
                stirnNewVAF.append(skillsVAF)
            }else{
                stirnNewVAF.append("Carefully")
            }
            if stirnNewVAF.count > 2 {
                SVProgressHUD.dismiss()
            }else{
                SVProgressHUD.dismiss()
            }
            
            self.view.addSubview(self.singDataVAFView)
            self.singDataVAFView.snp.makeConstraints { make in
                make.leading.bottom.trailing.equalToSuperview()
                make.top.equalTo(self.fansBurttonVAF.snp.bottom).offset(19)
            }
            return
        }))
        
        
       
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        if TypertLisrt == 0{
            indicatarViewVAf.center.x = fansBurttonVAF.center.x
        }else if TypertLisrt == 1{
            indicatarViewVAf.center.x = followedBurttonVAF.center.x
        }
    }
    
    
    func changeSeltd()  {
        if TypertLisrt == 0 {
            self.fansBurttonVAF.isSelected = true
            followedBurttonVAF.isSelected = false
            
            blockTitleVAF.isHidden = true
            userdatalisdtVAF = VAFTrendyLoadding.reasures.logUsVAFLikes
//            indicatarViewVAf.snp.makeConstraints({ make in
//                make.width.equalTo(12)
//                make.height.equalTo(4)
//                make.centerX.equalTo(fansBurttonVAF)
//                make.top.equalTo(fansBurttonVAF.snp.bottom).offset(3)
//            })
        }else if TypertLisrt == 1 {
            self.fansBurttonVAF.isSelected = false
            followedBurttonVAF.isSelected = true
//            indicatarViewVAf.snp.makeConstraints({ make in
//                make.width.equalTo(12)
//                make.height.equalTo(4)
//                make.centerX.equalTo(followedBurttonVAF)
//                make.top.equalTo(followedBurttonVAF.snp.bottom).offset(3)
//            })
            blockTitleVAF.isHidden = true
            userdatalisdtVAF = VAFTrendyLoadding.reasures.LikelogUsVAFs
            
        }else if TypertLisrt == 2 {
            self.fansBurttonVAF.isHidden = true
            followedBurttonVAF.isHidden = true
            indicatarViewVAf.isHidden = true
            blockTitleVAF.isHidden = false
            userdatalisdtVAF = VAFTrendyLoadding.reasures.disLikeloVAFusers
        }
        
//        singDataVAFView.reloadData()
    }

    @IBAction func fanhuiVAfgu(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
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

        if whiVAf > 23 &&  shooeseWantage.last ?? 0 > 3{
            return  self.userdatalisdtVAF.count
        }
        return  self.userdatalisdtVAF.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let kaobit = collectionView.dequeueReusableCell(withReuseIdentifier: "VAFUaerlistTerCellID", for: indexPath) as! VAFUaerlistTerCell
        let uhsData = self.userdatalisdtVAF[indexPath.row]
     
        kaobit.lorationTou.image = UIImage(named:uhsData["vafHeada"] ?? "")
        kaobit.namertVAF.text = uhsData["vafniame"]
        
        if TypertLisrt != 2 {
            kaobit.operationVAF.isHidden = true
        }else{
            kaobit.operationVAF.tag = indexPath.row
            kaobit.operationVAF.addTarget(self, action: #selector( usercentrGoonVAF(tapgVAF:)), for: .touchUpInside)
        }
      
        
        
        return kaobit
    }
    
    
    @objc func usercentrGoonVAF(tapgVAF:UIButton)  {
       let comnnneView = tapgVAF.tag
    
        SVProgressHUD.show()
        var newrrDIc = Dictionary<String,Int>()
        var shooeseWantage = [23,56,75,43]
        var whiVAf = 33
        shooeseWantage.append(whiVAf)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0, execute: DispatchWorkItem(block: {
            VAFTrendyLoadding.reasures.disLikeloVAFusers =  VAFTrendyLoadding.reasures.disLikeloVAFusers.filter({$0["vafIJID"] != self.userdatalisdtVAF[comnnneView]["vafIJID"]})
            self.userdatalisdtVAF = VAFTrendyLoadding.reasures.disLikeloVAFusers
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
                self.singDataVAFView.reloadData()
                SVProgressHUD.showSuccess(withStatus: "Removal successful!")
               
            }
            
           
            
           
        }))
       
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let defDatr = (userdatalisdtVAF[indexPath.row],0)
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        var stirnNewVAF = String(skillsVAF.suffix(4))
        if stirnNewVAF.contains("Bri") {
            stirnNewVAF.append(skillsVAF)
        }else{
            stirnNewVAF.append("Carefully")
        }
        if stirnNewVAF.count > 2 {
            self.navigationController?.pushViewController(VAFhiscenterTernaer.init(ingf: defDatr), animated: true)
        }
       
        
    }
}
