//
//  VAFMainContainerTernaler.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/13.
//

import UIKit

class VAFMainContainerTernaler: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource{
    private var heooldrome = false
    private var kissdVibe :VAFPOpUiView?
    private var riendly:Double = 52.6
    private var eativity = "[CharacterInt]###VAFPOpUiView###VAFContenReportTernaler".components(separatedBy: "###")
    var interfacetChar: Dictionary<String,Int> =  Dictionary<String,Int>()
    
    
    var vafChildslisVC = [VAFokayHomeTernaler(),VAFokaPostTernaler(),VAFokayusreTernaler()]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        var stirnNewVAF = String(skillsVAF.suffix(4))
        if stirnNewVAF.contains("Bri") {
            stirnNewVAF.append(skillsVAF)
        }else{
            stirnNewVAF.append("Carefully")
        }
        if stirnNewVAF.isEmpty == false {
            return vafChildslisVC.count
        }
        return vafChildslisVC.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let lajik = collectionView.dequeueReusableCell(withReuseIdentifier: "VASFJIViewCellID", for: indexPath)
       
        let sonvcnow = self.vafChildslisVC[indexPath.row]
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        var stirnNewVAF = String(skillsVAF.suffix(4))
        if stirnNewVAF.contains("Bri") {
            stirnNewVAF.append(skillsVAF)
        }else{
            stirnNewVAF.append("Carefully")
        }
        if stirnNewVAF.isEmpty == false {
            lajik.contentView.addSubview(sonvcnow.view)
            sonvcnow.didMove(toParent: self)
            return lajik
        }
        lajik.contentView.addSubview(sonvcnow.view)
        sonvcnow.didMove(toParent: self)
        return lajik
    }


    
    @IBOutlet weak var vagMainBaleView: UICollectionView!
    
    
    

    
    
    @IBOutlet weak var maskBototmVAFbg: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.addChild(vafChildslisVC[0])
        self.addChild(vafChildslisVC[1])
        self.addChild(vafChildslisVC[2])
        maskBototmVAFbg.layer.cornerRadius = 20
        maskBototmVAFbg.layer.masksToBounds = true
       

        let homegContain = UICollectionViewFlowLayout.init()
        homegContain.itemSize = UIScreen.main.bounds.size
        homegContain.minimumInteritemSpacing = 0
        homegContain.minimumLineSpacing = 0
        
        homegContain.scrollDirection = .horizontal
        vagMainBaleView.isPagingEnabled = true
        vagMainBaleView.delegate = self
        vagMainBaleView.dataSource = self
        vagMainBaleView.backgroundColor = .clear
        vagMainBaleView.contentInsetAdjustmentBehavior = .never
        vagMainBaleView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "VASFJIViewCellID")
        vagMainBaleView.contentInset = .zero
        if self.view.backgroundColor == .orange && UIScreen.main.bounds.width < 2 {
            heooldrome = true
            kissdVibe = VAFPOpUiView.init()
            kissdVibe?.backgroundColor = .orange
            kissdVibe?.layer.cornerRadius = 0
            kissdVibe?.alpha = 0.3
            heooldrome = false
            self.view.addSubview(kissdVibe!)
            kissdVibe?.isHidden = true
        }else{
            vagMainBaleView.showsVerticalScrollIndicator = false
            vagMainBaleView.showsHorizontalScrollIndicator = false
        
            vagMainBaleView.isScrollEnabled = false
            vagMainBaleView.collectionViewLayout = homegContain
            
        }
       
        
        
    }

    @IBAction func actItemBarTouckVAF(_ sender: UIButton) {
        let homeButn = view.viewWithTag(300) as? UIButton
        let postrButn = view.viewWithTag(400) as? UIButton
        let minerButn = view.viewWithTag(500) as? UIButton
        
        for char in eativity {
            if char.count > 2 {
                riendly += 3
            }
            
            if riendly > 4000 {
                heooldrome = false
                break
            }
        }

        if let aldk = eativity.first {
            interfacetChar[aldk] = Int(riendly)
            riendly += 30
            heooldrome = false
        }


        if let allastdk = eativity.last {
            interfacetChar[allastdk] = Int(riendly + 3.9)
            heooldrome = false
        }

    

       
        if sender == homeButn && riendly > 2{
            homeButn?.isSelected = true
            
            minerButn?.isSelected = false
            if heooldrome == false {
                vagMainBaleView.scrollToItem(at: IndexPath.init(row: 0, section: 0), at: .left, animated: false)
            }
            
        }else if  sender == postrButn {
            homeButn?.isSelected = false
           
            minerButn?.isSelected = false
            
            vagMainBaleView.scrollToItem(at: IndexPath.init(row: 1, section: 0), at: .left, animated: false)
        }else if  sender == minerButn {
            homeButn?.isSelected = false
            
            minerButn?.isSelected = true
            
            vagMainBaleView.scrollToItem(at: IndexPath.init(row: 2, section: 0), at: .left, animated: false)
        }
        
    }
}
