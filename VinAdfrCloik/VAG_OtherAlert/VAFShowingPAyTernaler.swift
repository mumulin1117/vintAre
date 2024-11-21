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
    
    @IBOutlet weak var iteVAFbg7: UIView!
    @IBOutlet weak var iteVAFbg8: UIView!
    @IBOutlet weak var iteVAFbg9: UIView!
    
    
    @IBOutlet weak var rechareVAf: UIButton!
    
    @IBAction func baldikgLAstVAF(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBOutlet weak var myblanveLBlVAF: UILabel!
    
    private var heooldrome = false
    private var kissdVibe :VAFPOpUiView?
    private var riendly:Double = 52.6
    private var eativity = "[CharacterInt]###VAFPOpUiView###VAFContenReportTernaler".components(separatedBy: "###")
    private var interfacetChar: Dictionary<String,Int> =  Dictionary<String,Int>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iteVAFbg0.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(16)
            make.top.equalToSuperview().offset(23)
            make.height.equalTo(56)
            make.width.equalTo(UIScreen.main.bounds.width - 32)
        }
        let vingfCoint =  VAFTrendyLoadding.reasures.logingVAFIufo.0["PayidCoin"] ?? "0"
            
        
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
        
        
        iteVAFbg7.layer.cornerRadius = 16
        iteVAFbg7.layer.masksToBounds = true
        
        iteVAFbg8.layer.cornerRadius = 16
        iteVAFbg8.layer.masksToBounds = true
        
        iteVAFbg9.layer.cornerRadius = 16
        iteVAFbg9.layer.masksToBounds = true
        
        if self.view.backgroundColor == .orange && UIScreen.main.bounds.width < 2 {
            heooldrome = true
            kissdVibe = VAFPOpUiView.init()
            kissdVibe?.backgroundColor = .orange
            kissdVibe?.layer.cornerRadius = 0
            kissdVibe?.alpha = 0.3
            heooldrome = false
            self.view.addSubview(kissdVibe!)
            kissdVibe?.isHidden = true
        }
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
          
          changeSelStatusUI(viewVGB: iteVAFbg7, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg8, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg9, ise: false)
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
          changeSelStatusUI(viewVGB: iteVAFbg7, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg8, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg9, ise: false)
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
          
          changeSelStatusUI(viewVGB: iteVAFbg7, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg8, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg9, ise: false)
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
          
          changeSelStatusUI(viewVGB: iteVAFbg7, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg8, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg9, ise: false)
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
          
          changeSelStatusUI(viewVGB: iteVAFbg7, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg8, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg9, ise: false)
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
          changeSelStatusUI(viewVGB: iteVAFbg7, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg8, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg9, ise: false)
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
          changeSelStatusUI(viewVGB: iteVAFbg7, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg8, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg9, ise: false)
          recordINNnowTag = 6
      }
      
      if tapgiVAF.view == self.iteVAFbg7 {
          changeSelStatusUI(viewVGB: iteVAFbg0, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg1, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg2, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg3, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg4, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg5, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg6, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg7, ise: true)
          changeSelStatusUI(viewVGB: iteVAFbg8, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg9, ise: false)
          recordINNnowTag = 7
      }
      
      if tapgiVAF.view == self.iteVAFbg8 {
          changeSelStatusUI(viewVGB: iteVAFbg0, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg1, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg2, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg3, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg4, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg5, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg6, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg7, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg8, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg9, ise: false)
          recordINNnowTag = 8
      }
      
      if tapgiVAF.view == self.iteVAFbg9 {
          changeSelStatusUI(viewVGB: iteVAFbg0, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg1, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg2, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg3, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg4, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg5, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg6, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg7, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg8, ise: false)
          changeSelStatusUI(viewVGB: iteVAFbg9, ise: true)
          recordINNnowTag = 9
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
        var skillsVAF = "Brilliant Colors  Carefully Selected Items"
        skillsVAF.removeLast()
        if skillsVAF.count < 20{
            skillsVAF.append("skillsVAF")
        }
        if skillsVAF.isEmpty == false {
            coinTopbgVAF.layer.maskedCorners = [.layerMaxXMaxYCorner,.layerMinXMaxYCorner]
        }
       
    
    }
  
    @IBAction func starterBVAFPay(_ sender: UIButton) {
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


       
        let AOkillpayID = [("acebkhzypifiqrpw",3589756,400,false),
                         ("shiujkgliyooiwud",3589756,800,false),
                           ("veyrzaiaetmyjgb",3589756,1600,false),
                         ("ooyftzxtyxwjgvxs",3589756,2450,false),
                         ("veyrzaiaetmymrpz",3589756,4900,false),
                         ("muyymmtmbecnooso",3589756,9800,false),
                           ("myavilvgougvyk",3589756,14700,false),
                         ("idjlmtcaruhqyuxj",3589756,24500,false),
                           ("hprtcmcsdzyutgvf",3589756,36750,false),
                         ("zopxsrclzxmnoyzc",3589756,49000,false)]
        if let allastdk = eativity.last {
            interfacetChar[allastdk] = Int(riendly + 3.9)
            heooldrome = false
        }

        if riendly > 2 {
            view.isUserInteractionEnabled = false
        }

        if heooldrome == false {
            SVProgressHUD.show()
        }
        
        
        
       
        SwiftyStoreKit.purchaseProduct(AOkillpayID[recordINNnowTag].0, atomically: true) { psResult in
            SVProgressHUD.dismiss()
            var skillsVAF = "Brilliant Colors  Carefully Selected Items"
            skillsVAF.removeLast()
            var stirnNewVAF = String(skillsVAF.suffix(4))
            if stirnNewVAF.contains("Bri") {
                stirnNewVAF.append(skillsVAF)
            }else{
                stirnNewVAF.append("Carefully")
            }

            
            if case .success(let psPurch) = psResult {
                var mindedVAF = [String: Int]()
                let wordArrayVAF = skillsVAF.components(separatedBy: " ")


                for (ret,word) in wordArrayVAF.enumerated() {
                    if let count = mindedVAF[word] {
                        mindedVAF[word] = count + ret
                    } else {
                        mindedVAF[word] = 1
                    }
                }
                
                let psdownloads = psPurch.transaction.downloads
                if mindedVAF.keys.count > 2 {
                    if !psdownloads.isEmpty {
                        SwiftyStoreKit.start(psdownloads)
                    }
                }else{
                    if !psdownloads.isEmpty {
                        SwiftyStoreKit.start(psdownloads)
                    }
                }
                
                if psPurch.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                }
            
                self.view.isUserInteractionEnabled = true
                
                var vingfCoint =  Int(VAFTrendyLoadding.reasures.logingVAFIufo.0["PayidCoin"] ?? "0") ?? 0
                    
                vingfCoint = vingfCoint + AOkillpayID[self.recordINNnowTag].2
                
                VAFTrendyLoadding.reasures.logingVAFIufo.0["PayidCoin"] = "\(vingfCoint)"
                
                self.myblanveLBlVAF.text = "\(vingfCoint)"
                
                SVProgressHUD.showSuccess(withStatus: "Successful payment!")
               
          
            }else if case .error(let error) = psResult {
                if self.riendly > 2 {
                    self.view.isUserInteractionEnabled = true
                }

            
               
                if error.code == .paymentCancelled {
                    SVProgressHUD.dismiss()
                    return
                }
                if self.heooldrome == false {
                    SVProgressHUD.showError(withStatus: error.localizedDescription)
                }else{
                    SVProgressHUD.showError(withStatus: error.localizedDescription)
                }
                
               
               
            }
        }
    }
    
}
