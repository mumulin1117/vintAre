//
//  VAFMainContainerTernaler.swift
//  VinAdfrCloik
//
//  Created by mumu on 2024/11/13.
//

import UIKit

class VAFMainContainerTernaler: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource{
    var vafChildslisVC = [VAFokayHomeTernaler(),VAFokaPostTernaler(),VAFokayusreTernaler()]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let lajik = collectionView.dequeueReusableCell(withReuseIdentifier: "VASFJIViewCellID", for: indexPath)
       
        let sonvcnow = self.vafChildslisVC[indexPath.row]
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
        vagMainBaleView.showsVerticalScrollIndicator = false
        vagMainBaleView.showsHorizontalScrollIndicator = false
    
        vagMainBaleView.isScrollEnabled = false
        vagMainBaleView.collectionViewLayout = homegContain
        
        
    }

    @IBAction func actItemBarTouckVAF(_ sender: UIButton) {
        let homeButn = view.viewWithTag(300) as? UIButton
        let postrButn = view.viewWithTag(400) as? UIButton
        let minerButn = view.viewWithTag(500) as? UIButton
        
        if sender == homeButn {
            homeButn?.isSelected = true
            
            minerButn?.isSelected = false
            
            vagMainBaleView.scrollToItem(at: IndexPath.init(row: 0, section: 0), at: .left, animated: false)
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
