//
//  VAFokaPostTernaler.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/13.
//

import UIKit

class VAFokaPostTernaler: UIViewController {
    var recordINNnowTag:ZhaoguType = .cloth
    @IBOutlet weak var clothVAF: UIImageView!
    
    @IBOutlet weak var bottomVAF: UIImageView!
    @IBOutlet weak var shoseVAF: UIImageView!
    @IBOutlet weak var bagsVAF: UIImageView!
    @IBOutlet weak var acceddVAF: UIImageView!
    
    @IBOutlet weak var topacftshowe: UIImageView!
    
    @IBOutlet weak var nextVAF: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        clothVAF.frame.size.height = 88.xxxxxxVAF
        bottomVAF.frame.size.height = 88.xxxxxxVAF
        shoseVAF.frame.size.height = 88.xxxxxxVAF
        bagsVAF.frame.size.height = 88.xxxxxxVAF
        acceddVAF.frame.size.height = 88.xxxxxxVAF
        
        topacftshowe.frame.size.height = 156.xxxxxxVAF
        
        
        clothVAF.layer.cornerRadius = 16
        clothVAF.layer.masksToBounds = true
        
        bottomVAF.layer.cornerRadius = 16
        bottomVAF.layer.masksToBounds = true
        
        shoseVAF.layer.cornerRadius = 16
        shoseVAF.layer.masksToBounds = true
        
        bagsVAF.layer.cornerRadius = 16
        bagsVAF.layer.masksToBounds = true
        
        acceddVAF.layer.cornerRadius = 16
        acceddVAF.layer.masksToBounds = true
        
        
        nextVAF.layer.cornerRadius = 16
        nextVAF.layer.masksToBounds = true
      

        clothVAF.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(changertNowingChongsedItemVAF(tapgiVAF:))))
        bottomVAF.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(changertNowingChongsedItemVAF(tapgiVAF:))))
        shoseVAF.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(changertNowingChongsedItemVAF(tapgiVAF:))))
        bagsVAF.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(changertNowingChongsedItemVAF(tapgiVAF:))))
        acceddVAF.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(changertNowingChongsedItemVAF(tapgiVAF:))))
        nextVAF.addTarget(self, action: #selector(nextAvliVAf), for: .touchUpInside)
    }

    
    
   @objc func nextAvliVAf() {
       
       let upvaf = VAFUploadCoverTernaler.init()
       upvaf.recordINNnowTag = self.recordINNnowTag
       self.navigationController?.pushViewController(upvaf, animated: true)
    }
    
  @objc  func changertNowingChongsedItemVAF(tapgiVAF:UITapGestureRecognizer)  {
      if tapgiVAF.view == self.clothVAF {
          changeSelStatusUI(viewVGB: clothVAF, ise: true)
          changeSelStatusUI(viewVGB: bottomVAF, ise: false)
          changeSelStatusUI(viewVGB: shoseVAF, ise: false)
          changeSelStatusUI(viewVGB: bagsVAF, ise: false)
          changeSelStatusUI(viewVGB: acceddVAF, ise: false)
         
          recordINNnowTag = .cloth
      }
      
      if tapgiVAF.view == self.bottomVAF {
          changeSelStatusUI(viewVGB: clothVAF, ise: false)
          changeSelStatusUI(viewVGB: bottomVAF, ise: true)
          changeSelStatusUI(viewVGB: shoseVAF, ise: false)
          changeSelStatusUI(viewVGB: bagsVAF, ise: false)
          changeSelStatusUI(viewVGB: acceddVAF, ise: false)
          recordINNnowTag = .bottom
      }
      
      if tapgiVAF.view == self.shoseVAF {
          changeSelStatusUI(viewVGB: clothVAF, ise: false)
          changeSelStatusUI(viewVGB: bottomVAF, ise: false)
          changeSelStatusUI(viewVGB: shoseVAF, ise: true)
          changeSelStatusUI(viewVGB: bagsVAF, ise: false)
          changeSelStatusUI(viewVGB: acceddVAF, ise: false)
          recordINNnowTag = .shose
      }
      
      if tapgiVAF.view == self.bagsVAF {
          changeSelStatusUI(viewVGB: clothVAF, ise: false)
          changeSelStatusUI(viewVGB: bottomVAF, ise: false)
          changeSelStatusUI(viewVGB: shoseVAF, ise: false)
          changeSelStatusUI(viewVGB: bagsVAF, ise: true)
          changeSelStatusUI(viewVGB: acceddVAF, ise: false)
          recordINNnowTag = .bags
      }
      
      if tapgiVAF.view == self.acceddVAF {
          changeSelStatusUI(viewVGB: clothVAF, ise: false)
          changeSelStatusUI(viewVGB: bottomVAF, ise: false)
          changeSelStatusUI(viewVGB: shoseVAF, ise: false)
          changeSelStatusUI(viewVGB: bagsVAF, ise: false)
          changeSelStatusUI(viewVGB: acceddVAF, ise: true)
          recordINNnowTag = .access
      }
    
        
    }
    
    
    private func changeSelStatusUI(viewVGB:UIView,ise:Bool)  {
        if ise == true {
            viewVGB.layer.borderColor = UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1).cgColor
            viewVGB.layer.borderWidth = 1.5
            viewVGB.backgroundColor = UIColor(red: 217/255, green: 153/255, blue: 62/255, alpha: 1)
        }else{
            viewVGB.layer.borderWidth = 0
            viewVGB.backgroundColor = .white
        }
    }
    
    
    

}
