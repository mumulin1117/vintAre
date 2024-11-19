//
//  VAFShowingPAyTernaler.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/15.
//

import UIKit
import SVProgressHUD
import SwiftyStoreKit
/// 支付
class VAFShowingPAyTernaler: UIViewController {
    var recordINNnowTag:Int = 0
    
    @IBOutlet weak var coinTopbgVAF: UIView!
    
    @IBOutlet weak var mineCoinbgVAGbg: UIView!
    
    
    @IBOutlet weak var iteVAFbg0: UIView!
    
    @IBOutlet weak var iteVAFbg1: UIView!
    @IBOutlet weak var iteVAFbg2: UIView!
    @IBOutlet weak var iteVAFbg3: UIView!
    @IBOutlet weak var iteVAFbg4: UIView!
    @IBOutlet weak var iteVAFbg5: UIView!
    @IBOutlet weak var iteVAFbg6: UIView!
    
    
    @IBOutlet weak var rechareVAf: UIButton!
    
    @IBAction func baldikgLAstVAF(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBOutlet weak var myblanveLBlVAF: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vingfCoint =  VAFTrendyLoadding.reasures.logingVAFIufo["PayidCoin"] ?? "0"
            
        
        self.myblanveLBlVAF.text = "\(vingfCoint)"
        
        
        mineCoinbgVAGbg.layer.cornerRadius = 24
//        mineCoinbgVAGbg.layer.masksToBounds = true
        
        iteVAFbg0.layer.cornerRadius = 16
        iteVAFbg0.layer.masksToBounds = true
        
        iteVAFbg1.layer.cornerRadius = 16
        iteVAFbg1.layer.masksToBounds = true
        
        iteVAFbg2.layer.cornerRadius = 16
        iteVAFbg2.layer.masksToBounds = true
        
        iteVAFbg3.layer.cornerRadius = 16
        iteVAFbg3.layer.masksToBounds = true
        
        iteVAFbg4.layer.cornerRadius = 16
        iteVAFbg4.layer.masksToBounds = true
        iteVAFbg5.layer.cornerRadius = 16
        iteVAFbg5.layer.masksToBounds = true
        
        iteVAFbg6.layer.cornerRadius = 16
        iteVAFbg6.layer.masksToBounds = true
        
        
        rechareVAf.layer.cornerRadius = 16
        rechareVAf.layer.masksToBounds = true

        iteVAFbg0.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(changertNowingChongsedItemVAF(tapgiVAF:))))
        iteVAFbg1.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(changertNowingChongsedItemVAF(tapgiVAF:))))
        iteVAFbg2.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(changertNowingChongsedItemVAF(tapgiVAF:))))
        iteVAFbg3.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(changertNowingChongsedItemVAF(tapgiVAF:))))
        iteVAFbg4.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(changertNowingChongsedItemVAF(tapgiVAF:))))
        iteVAFbg5.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(changertNowingChongsedItemVAF(tapgiVAF:))))
        iteVAFbg6.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(changertNowingChongsedItemVAF(tapgiVAF:))))
    }

    
    
  @objc  func changertNowingChongsedItemVAF(tapgiVAF:UITapGestureRecognizer)  {
      if tapgiVAF.view == self.iteVAFbg0 {
          changeSelStatusUI(viewVGB: iteVAFbg0, ise: true)
          changeSelStatusUI(viewVGB: iteVAFbg1, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg2, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg3, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg4, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg5, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg6, ise: false)
          recordINNnowTag = 0
      }
      
      if tapgiVAF.view == self.iteVAFbg1 {
          changeSelStatusUI(viewVGB: iteVAFbg0, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg1, ise: true)
          changeSelStatusUI(viewVGB: iteVAFbg2, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg3, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg4, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg5, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg6, ise: false)
          recordINNnowTag = 1
      }
      
      if tapgiVAF.view == self.iteVAFbg2 {
          changeSelStatusUI(viewVGB: iteVAFbg0, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg1, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg2, ise: true)
          changeSelStatusUI(viewVGB: iteVAFbg3, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg4, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg5, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg6, ise: false)
          recordINNnowTag = 2
      }
      
      if tapgiVAF.view == self.iteVAFbg3 {
          changeSelStatusUI(viewVGB: iteVAFbg0, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg1, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg2, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg3, ise: true)
          changeSelStatusUI(viewVGB: iteVAFbg4, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg5, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg6, ise: false)
          recordINNnowTag = 3
      }
      
      if tapgiVAF.view == self.iteVAFbg4 {
          changeSelStatusUI(viewVGB: iteVAFbg0, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg1, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg2, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg3, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg4, ise: true)
          changeSelStatusUI(viewVGB: iteVAFbg5, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg6, ise: false)
          recordINNnowTag = 4
      }
      if tapgiVAF.view == self.iteVAFbg5 {
          changeSelStatusUI(viewVGB: iteVAFbg0, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg1, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg2, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg3, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg4, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg5, ise: true)
          changeSelStatusUI(viewVGB: iteVAFbg6, ise: false)
          recordINNnowTag = 5
      }
      if tapgiVAF.view == self.iteVAFbg6 {
          changeSelStatusUI(viewVGB: iteVAFbg0, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg1, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg2, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg3, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg4, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg5, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg6, ise: true)
          recordINNnowTag = 6
      }
        
    }
    
    
    private func changeSelStatusUI(viewVGB:UIView,ise:Bool)  {
        if ise == true {
        
            let lbcount = viewVGB.viewWithTag(10) as? UILabel
            let lbmoney = viewVGB.viewWithTag(11) as? UILabel
            lbcount?.textColor = .white
            lbmoney?.textColor = .white
            viewVGB.backgroundColor = UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1)
        }else{
            let lbcount = viewVGB.viewWithTag(10) as? UILabel
            let lbmoney = viewVGB.viewWithTag(11) as? UILabel
            lbcount?.textColor = UIColor(red: 0.8, green: 0.75, blue: 0.67, alpha: 1)
            lbmoney?.textColor = UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1)
            viewVGB.backgroundColor = UIColor(red: 1, green: 0.97, blue: 0.93, alpha: 1)
        }
    }
    
    
    
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        coinTopbgVAF.layer.cornerRadius = 32
        coinTopbgVAF.layer.maskedCorners = [.layerMaxXMaxYCorner,.layerMinXMaxYCorner]
    
    }
  
    @IBAction func starterBVAFPay(_ sender: UIButton) {
        let AOkillpayID = [("acebkhzypifiqrpw","$0.99",400),
                         ("shiujkgliyooiwud","$1.99",800),
                         ("ooyftzxtyxwjgvxs","$4.99",2450),
                         ("veyrzaiaetmymrpz","$9.99",4900),
                         ("muyymmtmbecnooso","$19.99",9800),
                         ("idjlmtcaruhqyuxj","$49.99",24500),
                         ("zopxsrclzxmnoyzc","$99.99",49000)]
        view.isUserInteractionEnabled = false
        
        SVProgressHUD.show()
       
        SwiftyStoreKit.purchaseProduct(AOkillpayID[recordINNnowTag].0, atomically: true) { psResult in
            
            if case .success(let psPurch) = psResult {
                let psdownloads = psPurch.transaction.downloads
                
                if !psdownloads.isEmpty {
                    SwiftyStoreKit.start(psdownloads)
                }
                
                if psPurch.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                }
                
                self.view.isUserInteractionEnabled = true
              
                
                var vingfCoint =  Int(VAFTrendyLoadding.reasures.logingVAFIufo["PayidCoin"] ?? "0") ?? 0
                    
                vingfCoint = vingfCoint + AOkillpayID[self.recordINNnowTag].2
                VAFTrendyLoadding.reasures.logingVAFIufo["PayidCoin"] = "\(vingfCoint)"
                
                self.myblanveLBlVAF.text = "\(vingfCoint)"
                
                SVProgressHUD.showSuccess(withStatus: "Successful payment!")
               
          
            }else if case .error(let error) = psResult {
                self.view.isUserInteractionEnabled = true
               
               
                if error.code == .paymentCancelled {
                    SVProgressHUD.dismiss()
                    return
                }
                
                SVProgressHUD.showError(withStatus: error.localizedDescription)
            }
        }
    }
    
}
