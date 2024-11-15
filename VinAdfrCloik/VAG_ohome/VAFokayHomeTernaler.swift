//
//  VAFokayHomeTernaler.swift
//  VinAdfrCloik
//
//  Created by mumu on 2024/11/14.
//

import UIKit
import SVProgressHUD

class VAFokayHomeTernaler: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    enum ZhaoguType {
        case cloth
        case bottom
        case shose
        case bags
        case access
    }
    enum SecondType {
        case newest
        case Trendind
    }
    
    
    var nowSelZhaoguType:ZhaoguType = .cloth
    var nowSelSecondType:SecondType = .newest
    
    
    var shoingZhuoGuDataVAF = Array<Dictionary<String,String>>()
    
    @objc func changeUpadateMineData()  {
        var shingData = Array<Dictionary<String,String>>()
        switch nowSelZhaoguType {
        case .cloth:
            shingData = VAFTrendyLoadding.reasures.mindVAFClothse
        case .bottom:
            shingData = VAFTrendyLoadding.reasures.mindVAFBottoms
        case .shose:
            shingData = VAFTrendyLoadding.reasures.mindVAFShoes
        case .bags:
            shingData = VAFTrendyLoadding.reasures.mindVAFBags
        case .access:
            shingData = VAFTrendyLoadding.reasures.mindVAFAccess
        }
        switch nowSelSecondType {
        case .newest:
            if shingData.count >= 2 {
                shingData = Array(shingData.prefix(2))
            }else if  shingData.count >= 1 {
                shingData = Array(shingData.prefix(1))
            }
            
        case .Trendind:
            
            if shingData.count >= 1 {
                shingData = Array(shingData.suffix(1))
            }
            
        }
        
        shoingZhuoGuDataVAF = shingData
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  self.shoingZhuoGuDataVAF.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let kaobit = collectionView.dequeueReusableCell(withReuseIdentifier: "VAFTHOmeShingCellID", for: indexPath) as! VAFTHOmeShingCell
        let uhsData = self.shoingZhuoGuDataVAF[indexPath.row]
        
        kaobit.lorationTou.image = UIImage(named:uhsData["vafHeada"] ?? "")
        kaobit.namertVAF.text = uhsData["vafniame"]
        kaobit.atttudeVAF.isHighlighted = ((uhsData["iFlikeThisDYM"] ?? "0") == "1")
        
        let mingshonh = (uhsData["vafshowPic"] ?? "").components(separatedBy: ",")
        
        kaobit.tuONeVAF.image = UIImage(named:mingshonh[0])
        kaobit.tuTWOVAF.image = UIImage(named:mingshonh[1])
        kaobit.tuTHREEVAF.image = UIImage(named:mingshonh[2])
        kaobit.tuFOURVAF.image = UIImage(named:mingshonh[3])
        kaobit.collectiomertVAF.text = "Collected in " +  (uhsData["vafshowYear"] ?? "")
        
        return kaobit
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let defDatr = self.shoingZhuoGuDataVAF[indexPath.row]
        let auDetaiDym = VAFDetailDyymstTernaler.init()
        auDetaiDym.uhsData =  defDatr
        self.navigationController?.pushViewController(auDetaiDym, animated: true)
        
    }

    @IBOutlet weak var layerScrollvieewVAF: UIScrollView!
    
    
    @IBOutlet weak var clothCAtaVAfView: UIView!
    
    
    
    @IBOutlet weak var bottomVafView: UIView!
    
    
    @IBOutlet weak var accessVafView: UIView!
    
    @IBOutlet weak var shoeseVafView: UIView!
    
    
    @IBOutlet weak var bagVafView: UIView!
    
    @IBOutlet weak var secondCatabg: UIView!
    
    @IBOutlet weak var animationVAFVire: UIView!
    
    @IBOutlet weak var newestVAF: UIButton!
    
    
    @IBOutlet weak var trendingVAF: UIButton!
    
    @IBAction func trendVAf(_ sender: UIButton) {
        if sender == newestVAF {
            newestVAF.isSelected = true
            trendingVAF.isSelected = false
            animationVAFVire.center.x = newestVAF.center.x
            self.nowSelSecondType = .newest
        }
        
        
        if sender == trendingVAF {
            newestVAF.isSelected = false
            trendingVAF.isSelected = true
            animationVAFVire.center.x = trendingVAF.center.x
            self.nowSelSecondType = .Trendind
        }
        observeBovklUserVGAF()
    }
    
    
    private lazy var singDataVAFView: UICollectionView = {
        let comali = UICollectionViewFlowLayout.init()
        comali.itemSize = CGSize.init(width: UIScreen.main.bounds.width - 24, height:346)
        comali.minimumLineSpacing = 12
        comali.minimumInteritemSpacing = 0
        comali.scrollDirection = .vertical
        
        let gijij = UICollectionView.init(frame: .zero, collectionViewLayout: comali)
        gijij.delegate = self
        gijij.backgroundColor = .clear
        gijij.dataSource = self
        gijij.register(VAFTHOmeShingCell.self, forCellWithReuseIdentifier: "VAFTHOmeShingCellID")
        gijij.showsVerticalScrollIndicator = false
        gijij.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 150, right: 0)
        return gijij
    }()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.changeUpadateMineData()
        
        (clothCAtaVAfView.viewWithTag(100) as? UIImageView)?.isHighlighted = true
        
        secondCatabg.layer.cornerRadius = 20
        secondCatabg.layer.masksToBounds = true
        
        
        animationVAFVire.layer.cornerRadius = 20
        animationVAFVire.layer.masksToBounds = true
        
        SVProgressHUD.show()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0, execute: DispatchWorkItem(block: {
            SVProgressHUD.dismiss()
            self.view.addSubview(self.singDataVAFView)
            self.singDataVAFView.snp.makeConstraints { make in
                make.top.equalTo(self.newestVAF.snp.bottom).offset(21)
                make.left.equalToSuperview().inset(12)
                make.width.equalTo(UIScreen.main.bounds.width - 24)
                make.bottom.equalToSuperview()
            }
            
            return
        }))
        
       
        
        
        
        
        
        clothCAtaVAfView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapOntopTypeTap(tabpVAF:))))
        bottomVafView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapOntopTypeTap(tabpVAF:))))
        
        shoeseVafView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapOntopTypeTap(tabpVAF:))))
        bagVafView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapOntopTypeTap(tabpVAF:))))
        
        accessVafView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapOntopTypeTap(tabpVAF:))))
        
        NotificationCenter.default.addObserver(self, selector: #selector(observeBovklUserVGAF), name: NSNotification.Name.init("BlockVAFGUsrs"), object: nil)
        
        
    }

  
    
    @objc func tapOntopTypeTap(tabpVAF:UITapGestureRecognizer)  {
        if tabpVAF.view == clothCAtaVAfView {
            (clothCAtaVAfView.viewWithTag(100) as? UIImageView)?.isHighlighted = true
            (bottomVafView.viewWithTag(100) as? UIImageView)?.isHighlighted = false
            (shoeseVafView.viewWithTag(100) as? UIImageView)?.isHighlighted = false
            (bagVafView.viewWithTag(100) as? UIImageView)?.isHighlighted = false
            (accessVafView.viewWithTag(100) as? UIImageView)?.isHighlighted = false
            self.nowSelZhaoguType = .cloth
        }
        
        
        if tabpVAF.view == bottomVafView {
            (clothCAtaVAfView.viewWithTag(100) as? UIImageView)?.isHighlighted = false
            (bottomVafView.viewWithTag(100) as? UIImageView)?.isHighlighted = true
            (shoeseVafView.viewWithTag(100) as? UIImageView)?.isHighlighted = false
            (bagVafView.viewWithTag(100) as? UIImageView)?.isHighlighted = false
            (accessVafView.viewWithTag(100) as? UIImageView)?.isHighlighted = false
            self.nowSelZhaoguType = .bottom
        }
        
        if tabpVAF.view == shoeseVafView {
            (clothCAtaVAfView.viewWithTag(100) as? UIImageView)?.isHighlighted = false
            (bottomVafView.viewWithTag(100) as? UIImageView)?.isHighlighted = false
            (shoeseVafView.viewWithTag(100) as? UIImageView)?.isHighlighted = true
            (bagVafView.viewWithTag(100) as? UIImageView)?.isHighlighted = false
            (accessVafView.viewWithTag(100) as? UIImageView)?.isHighlighted = false
            self.nowSelZhaoguType = .shose
        }
        
        
        if tabpVAF.view == bagVafView {
            (clothCAtaVAfView.viewWithTag(100) as? UIImageView)?.isHighlighted = false
            (bottomVafView.viewWithTag(100) as? UIImageView)?.isHighlighted = false
            (shoeseVafView.viewWithTag(100) as? UIImageView)?.isHighlighted = false
            (bagVafView.viewWithTag(100) as? UIImageView)?.isHighlighted = true
            (accessVafView.viewWithTag(100) as? UIImageView)?.isHighlighted = false
            self.nowSelZhaoguType = .bags
        }
        
        if tabpVAF.view == accessVafView {
            (clothCAtaVAfView.viewWithTag(100) as? UIImageView)?.isHighlighted = false
            (bottomVafView.viewWithTag(100) as? UIImageView)?.isHighlighted = false
            (shoeseVafView.viewWithTag(100) as? UIImageView)?.isHighlighted = false
            (bagVafView.viewWithTag(100) as? UIImageView)?.isHighlighted = false
            (accessVafView.viewWithTag(100) as? UIImageView)?.isHighlighted = true
            self.nowSelZhaoguType = .access
        }
        observeBovklUserVGAF()
    }

   @objc func observeBovklUserVGAF() {
       
       
       self.changeUpadateMineData()
       SVProgressHUD.show()
       DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0, execute: DispatchWorkItem(block: {
           SVProgressHUD.dismiss()
          
           self.singDataVAFView.reloadData()
           
           return
       }))
       
    }

}
