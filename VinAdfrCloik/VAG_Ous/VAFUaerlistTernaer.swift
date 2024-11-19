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
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0, execute: DispatchWorkItem(block: {
            SVProgressHUD.dismiss()
            self.singDataVAFView.reloadData()
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
        let comali = UICollectionViewFlowLayout.init()
        if TypertLisrt != 2 {
            comali.itemSize = CGSize.init(width: (UIScreen.main.bounds.width - 36)/2, height:180)
        }else{
            comali.itemSize = CGSize.init(width: (UIScreen.main.bounds.width - 36)/2, height:232)
        }
       
        comali.minimumLineSpacing = 12
        comali.minimumInteritemSpacing = 0
        comali.scrollDirection = .vertical
        
        let gijij = UICollectionView.init(frame: .zero, collectionViewLayout: comali)
        gijij.delegate = self
        gijij.backgroundColor = .clear
        gijij.dataSource = self
        gijij.register(VAFUaerlistTerCell.self, forCellWithReuseIdentifier: "VAFUaerlistTerCellID")
        gijij.showsVerticalScrollIndicator = false
        gijij.contentInset = UIEdgeInsets(top: 0, left: 12, bottom: 150, right: 12)
        return gijij
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        indicatarViewVAf.layer.cornerRadius = 2
        indicatarViewVAf.layer.masksToBounds = true
        
        changeSeltd()
        SVProgressHUD.show()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0, execute: DispatchWorkItem(block: {
            SVProgressHUD.dismiss()
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
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0, execute: DispatchWorkItem(block: {
            VAFTrendyLoadding.reasures.disLikeloVAFusers =  VAFTrendyLoadding.reasures.disLikeloVAFusers.filter({$0["vafIJID"] != self.userdatalisdtVAF[comnnneView]["vafIJID"]})
            self.userdatalisdtVAF = VAFTrendyLoadding.reasures.disLikeloVAFusers
            self.singDataVAFView.reloadData()
            SVProgressHUD.showSuccess(withStatus: "Removal successful!")
           
            
            return
        }))
       
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let defDatr = userdatalisdtVAF[indexPath.row]
        self.navigationController?.pushViewController(VAFhiscenterTernaer.init(ingf: defDatr), animated: true)
        
    }
}
