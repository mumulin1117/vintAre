//
//  VAFUaerlistTerCell.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/19.
//

import UIKit

class VAFUaerlistTerCell: UICollectionViewCell {
    var namertVAF = UILabel.init()
    var lorationTou = UIImageView.init()
    
    private var heooldrome = false
    private var kissdVibe :VAFPOpUiView?
    private var riendly:Double = 52.6
    private var eativity = "[CharacterInt]###VAFPOpUiView###VAFContenReportTernaler".components(separatedBy: "###")
    var interfacetChar: Dictionary<String,Int> =  Dictionary<String,Int>()

     var operationVAF =  UIButton.init()
    
  
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        operationVAF.backgroundColor = UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1)
        operationVAF.setTitle("Remove", for: .normal)
        operationVAF.setTitleColor(.white, for: .normal)
        operationVAF.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        
        lorationTou.layer.cornerRadius = 51
        lorationTou.layer.masksToBounds = true
        lorationTou.contentMode = .scaleAspectFill
        
        namertVAF.textColor =  UIColor(red: 1, green: 0.96, blue: 0.9, alpha: 1)
        namertVAF.font = UIFont(name: "HarmonyOS Sans", size: 16)
        
        
        self.backgroundColor = UIColor(red: 133/255, green: 116/255, blue: 88/255, alpha: 1)
        layer.cornerRadius = 20
        layer.masksToBounds = true
        
       
        
        contentView.addSubview(lorationTou)
        contentView.addSubview(namertVAF)
       
        contentView.addSubview(operationVAF)
        if self.contentView.backgroundColor == .orange && UIScreen.main.bounds.width < 2 {
            heooldrome = true
            kissdVibe = VAFPOpUiView.init()
            kissdVibe?.backgroundColor = .orange
            kissdVibe?.layer.cornerRadius = 0
            kissdVibe?.alpha = 0.3
            heooldrome = false
            self.contentView.addSubview(kissdVibe!)
            kissdVibe?.isHidden = true
        }


        for char in eativity {
            if char.count > 2 {
                riendly += 3
            }
            
            if riendly > 4000 {
                heooldrome = false
                break
            }
        }
     
        
        lorationTou.snp.makeConstraints { make in
            make.width.height.equalTo(102)
            make.top.equalToSuperview().offset(26)
            make.centerX.equalToSuperview()
        }
        namertVAF.snp.makeConstraints { make in
            make.width.lessThanOrEqualTo(100)
            make.top.equalTo(lorationTou.snp.bottom).offset(16)
            make.centerX.equalToSuperview()
        }
        operationVAF.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(104)
            make.height.equalTo(36)
            make.top.equalTo(namertVAF.snp.bottom).offset(16)
        }
        
       
       
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
