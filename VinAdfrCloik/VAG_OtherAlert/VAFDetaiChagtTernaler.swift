//
//  VAFDetaiChagtTernaler.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/15.
//

import UIKit
import SVProgressHUD
import SCLAlertView

/// chat详情
class VAFDetaiChagtTernaler: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    @IBOutlet weak var lorationTou: UIImageView!
    
    @IBOutlet weak var namertVAF: UILabel!
    var uhsData = Dictionary<String,String>()
    
    var recordingChatDicVAF: Array<(Int,String,String)> = Array<(Int,String,String)>()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        recordingChatDicVAF.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let noingChaveCEll = tableView.dequeueReusableCell(withIdentifier:"VAFMyineMessageID") as! VAFMyineMessage
        noingChaveCEll.backgroundColor = .clear
       
        let shoningXCe = recordingChatDicVAF[indexPath.row]
        noingChaveCEll.sendcontetnVAF.text = shoningXCe.1
        noingChaveCEll.msenTimeVAF.text = shoningXCe.2
        
        noingChaveCEll.ChangeVAFChatItemUI(dirctionVAF: shoningXCe.0)
        
        return noingChaveCEll
    }
    
    
    @IBOutlet weak var bgCommentVAF: UIView!
    
    @IBOutlet weak var inouterCAF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        someVAfDataView.backgroundColor = .clear
        
        someVAfDataView.rowHeight = UITableView.automaticDimension
        someVAfDataView.contentInset = UIEdgeInsets.zero
        
        someVAfDataView.estimatedRowHeight = 80
        
        someVAfDataView.register(VAFMyineMessage.self, forCellReuseIdentifier: "VAFMyineMessageID")
        someVAfDataView.separatorStyle = .none
        someVAfDataView.allowsSelection = false
        someVAfDataView.showsVerticalScrollIndicator = false
        someVAfDataView.backgroundColor = .clear
        someVAfDataView.dataSource = self
        someVAfDataView.delegate = self
        
        lorationTou.image = UIImage(named:uhsData["vafHeada"] ?? "")
        namertVAF.text = uhsData["vafniame"]
        
        lorationTou.isUserInteractionEnabled = true
        lorationTou.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(usercentrGoonVAF)))
        
    }
    
    @IBOutlet weak var someVAfDataView: UITableView!
    
    
    
    
    
    @IBAction func sendmcommentVAF(_ sender: UIButton) {
        
        if sender.tag == 110 {
            guard let contetntt = inouterCAF.text,contetntt.count > 0 else {
                SVProgressHUD.showInfo(withStatus: "Your send message cannot be empty!")
                return
            }
            
            let now = Date()
             let dateFormatter = DateFormatter()
               dateFormatter.dateFormat = "HH:mm:ss"
               let timeString = dateFormatter.string(from: now)
            
            let diologdata = (1,contetntt,timeString)
            self.recordingChatDicVAF.append(diologdata)
            
            inouterCAF.resignFirstResponder()
            inouterCAF.text = nil
            
           
            
            SVProgressHUD.show()
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5, execute: DispatchWorkItem(block: {
                self.someVAfDataView.reloadData()
                SVProgressHUD.dismiss()
            }))
        }
        if sender.tag == 90 {
            

           
            let appearance = SCLAlertView.SCLAppearance(
                showCloseButton: false,
                circleBackgroundColor:UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1),
                contentViewColor:UIColor(red: 133/255, green: 116/255, blue: 88/255, alpha: 1),
                
                titleColor:UIColor.white
            )
            let alert = SCLAlertView(appearance: appearance)
            alert.iconTintColor = UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1)
            alert.addButton("Block",backgroundColor:UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1)) {
                VAFTrendyLoadding.reasures.bloackVAFUser(igFor: self.uhsData)
                self.navigationController?.popViewController(animated: true)
            }
            alert.addButton("Report",backgroundColor:UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1)) {
                let acfreport = VAFContenReportTernaler.init()
                acfreport.modalPresentationStyle = .overCurrentContext
                self.present(acfreport, animated: true)
            }
            alert.addButton("Cancel",backgroundColor:UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1)) {
                
            }
          
            alert.showInfo("Report or Block", subTitle: "If you find this user's behavior inappropriate or offensive, you can choose to report them to us for review or block them to prevent further interaction.")
            
            
        }
        
        
        if sender.tag == 100 {//video
            
            let isdnf = VAFVideogTernaler.init()
            isdnf.uhsData = self.uhsData
            isdnf.modalPresentationStyle = .fullScreen
            self.present(isdnf, animated: true)
            
        }
        
        
        if sender.tag == 10 {
            
            self.navigationController?.popViewController(animated: true)
            
        }
        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        bgCommentVAF.layer.cornerRadius = 24
        bgCommentVAF.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
    }

    
    @objc func usercentrGoonVAF()  {
       
        let datefet = uhsData
        
        self.navigationController?.pushViewController(VAFhiscenterTernaer.init(ingf: datefet), animated: true)
        
     }
}


class VAFMyineMessage: UITableViewCell {
    let msenTimeVAF = UILabel.init()
    let sendcontetnVAF = UILabel.init()
    private let sendViewBGVAF = UIView.init()
    
   
    
    func ChangeVAFChatItemUI(dirctionVAF:Int) {
        
        if dirctionVAF == 1{
           
            sendViewBGVAF.backgroundColor = UIColor(red: 0.85, green: 0.6, blue: 0.24, alpha: 1)
            sendcontetnVAF.textColor = UIColor(red: 1, green: 0.96, blue: 0.9, alpha: 1)
            sendcontetnVAF.textAlignment = .right
            sendViewBGVAF.snp.remakeConstraints { make in
                make.width.greaterThanOrEqualTo(42.xxxxxxVAF)
                make.width.lessThanOrEqualTo(282.xxxxxxVAF)
                make.trailing.equalToSuperview()
                make.top.bottom.equalToSuperview().inset(30.xxxxxxVAF)
               
            }
            sendcontetnVAF.textAlignment = .right
            msenTimeVAF.textAlignment = .right
            msenTimeVAF.snp.remakeConstraints { make in
                make.trailing.equalTo(sendViewBGVAF.snp.trailing).offset(-24.xxxxxxVAF)
                make.top.equalTo(sendViewBGVAF.snp.bottom).offset(12.xxxxxxVAF)
            }
            
            
        }else{
          
            sendViewBGVAF.backgroundColor = UIColor(red: 0.37, green: 0.26, blue: 0.09, alpha: 1)
            sendcontetnVAF.textColor = UIColor(red: 0.94, green: 0.85, blue: 0.73, alpha: 1)
            sendcontetnVAF.textAlignment = .left
            sendViewBGVAF.snp.remakeConstraints { make in
                make.width.greaterThanOrEqualTo(42.xxxxxxVAF)
                make.width.lessThanOrEqualTo(282.xxxxxxVAF)
                make.leading.equalToSuperview()
                make.top.bottom.equalToSuperview().inset(30.xxxxxxVAF)
               
            }
            sendcontetnVAF.textAlignment = .left
            msenTimeVAF.textAlignment = .left
            msenTimeVAF.snp.remakeConstraints { make in
                make.leading.equalTo(sendViewBGVAF.snp.leading).offset(24.xxxxxxVAF)
                make.top.equalTo(sendViewBGVAF.snp.bottom).offset(12.xxxxxxVAF)
            }
            
        }
    }
    
  
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = UIColor(red: 0.52, green: 0.45, blue: 0.35, alpha: 1)
        msenTimeVAF.textColor = UIColor(red: 0.77, green: 0.69, blue: 0.56, alpha: 1)
        msenTimeVAF.font = UIFont.systemFont(ofSize: 12)
        msenTimeVAF.textAlignment = .right
       
        contentView.addSubview(sendViewBGVAF)
        sendViewBGVAF.addSubview(sendcontetnVAF)
        contentView.addSubview(msenTimeVAF)
        
        sendcontetnVAF.font = UIFont(name: "HarmonyOS Sans", size: 16)
       
       
        sendViewBGVAF.layer.cornerRadius = 20
        sendViewBGVAF.layer.masksToBounds = true
       
        
        
       
        
        sendViewBGVAF.snp.makeConstraints { make in
            make.width.greaterThanOrEqualTo(42.xxxxxxVAF)
            make.width.lessThanOrEqualTo(282.xxxxxxVAF)
            make.trailing.equalToSuperview()
            make.top.bottom.equalToSuperview().inset(30.xxxxxxVAF)
        }
        
        sendcontetnVAF.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(24.xxxxxxVAF)
            make.top.bottom.equalToSuperview().inset(16.xxxxxxVAF)
        }
        
        msenTimeVAF.snp.makeConstraints { make in
            make.trailing.equalTo(sendViewBGVAF.snp.trailing).offset(-24.xxxxxxVAF)
            make.top.equalTo(sendViewBGVAF.snp.bottom).offset(12.xxxxxxVAF)
        }
    }

    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
