//
//  VAFTHOmeShingCell.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/14.
//

import UIKit
import SnapKit
class VAFTHOmeShingCell: UICollectionViewCell {
    var namertVAF = UILabel.init()
    var lorationTou = UIImageView.init()
    

     var atttudeVAF =  UIButton.init()
    private var commenrtVAF = UIImageView.init(image: UIImage.init(named: "vaf_commenrt"))
   
    
    let tuONeVAF = UIImageView.init()
    let tuTWOVAF = UIImageView.init()
    let tuTHREEVAF = UIImageView.init()
    let tuFOURVAF = UIImageView.init()
    
    var collectiomertVAF = UILabel.init()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        atttudeVAF.setImage(UIImage.init(named: "vafIo_emptylike"), for: .normal)
        atttudeVAF.setImage(UIImage.init(named: "vafIo_like"), for: .selected)
        atttudeVAF.isUserInteractionEnabled = false
        
        
        lorationTou.layer.cornerRadius = 17
        lorationTou.layer.masksToBounds = true
        lorationTou.contentMode = .scaleAspectFill
        
        namertVAF.textColor =  UIColor(red: 1, green: 0.96, blue: 0.9, alpha: 1)
        namertVAF.font = UIFont(name: "HarmonyOS Sans", size: 15)
        
        
        self.backgroundColor = UIColor(red: 0.52, green: 0.45, blue: 0.35, alpha: 1)
        layer.cornerRadius = 20
        layer.masksToBounds = true
        
        tuONeVAF.layer.masksToBounds = true
        tuTWOVAF.layer.masksToBounds = true
        tuTHREEVAF.layer.masksToBounds = true
        tuFOURVAF.layer.masksToBounds = true
        
        tuONeVAF.contentMode = .scaleAspectFill
        tuTWOVAF.contentMode = .scaleAspectFill
        tuTHREEVAF.contentMode = .scaleAspectFill
        tuFOURVAF.contentMode = .scaleAspectFill
        
        tuONeVAF.layer.cornerRadius = 20
        tuTWOVAF.layer.cornerRadius = 20
        tuTHREEVAF.layer.cornerRadius = 20
        tuFOURVAF.layer.cornerRadius = 20
        
        collectiomertVAF.textColor = UIColor(red: 0.96, green: 0.82, blue: 0.62, alpha: 1)
        collectiomertVAF.font = UIFont(name: "HarmonyOS Sans Medium", size: 16)
        collectiomertVAF.textAlignment = .center
        
        
        contentView.addSubview(lorationTou)
        contentView.addSubview(namertVAF)
        contentView.addSubview(commenrtVAF)
        contentView.addSubview(atttudeVAF)
        
        contentView.addSubview(tuONeVAF)
        contentView.addSubview(tuTWOVAF)
        contentView.addSubview(tuTHREEVAF)
        contentView.addSubview(tuFOURVAF)
        
        contentView.addSubview(collectiomertVAF)
        
        
        lorationTou.snp.makeConstraints { make in
            make.width.height.equalTo(34)
            make.top.leading.equalToSuperview().offset(16)
        }
        namertVAF.snp.makeConstraints { make in
            make.width.lessThanOrEqualTo(100)
            make.leading.equalToSuperview().offset(34 + 8 + 16)
            make.centerY.equalTo(lorationTou)
        }
        commenrtVAF.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(20)
            make.width.height.equalTo(28)
            make.centerY.equalTo(lorationTou)
        }
        
        
        atttudeVAF.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(20 + 28 + 16)
            make.width.height.equalTo(28)
            make.centerY.equalTo(lorationTou)
        }
        let itemg = (UIScreen.main.bounds.width - 24 - 24 - 12)/3
        
        let itehueight = (220 - 16)/3
        
        tuONeVAF.snp.makeConstraints { make in
            make.width.equalTo(itemg*2)
            make.leading.equalToSuperview().offset(12)
            make.height.equalTo(220)
            make.top.equalTo(lorationTou.snp.bottom).offset(16)
        }
        
        tuTWOVAF.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(12)
            make.width.equalTo(itemg)
            make.height.equalTo(itehueight)
            make.top.equalTo(tuONeVAF)
        }
        
        tuTHREEVAF.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(12)
            make.width.equalTo(itemg)
            make.height.equalTo(itehueight)
            make.top.equalTo(tuTWOVAF.snp.bottom).offset(8)
        }
        
        
        tuFOURVAF.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(12)
            make.width.equalTo(itemg)
            make.height.equalTo(itehueight)
            make.bottom.equalTo(tuONeVAF)
        }
        
        collectiomertVAF.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(tuONeVAF.snp.bottom).offset(20)
        }
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
