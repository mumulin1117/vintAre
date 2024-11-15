//
//  VAFCommentTernaler.swift
//  VinAdfrCloik
//
//  Created by mumu on 2024/11/15.
//

import UIKit
import SVProgressHUD
class VAFCommentTernaler: UIViewController {
    @IBOutlet weak var inouterCAF: UITextField!
    
    @IBOutlet weak var bgCommentVAF: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        inouterCAF.layer.cornerRadius = 15
        inouterCAF.layer.masksToBounds = true
        
        inouterCAF.leftViewMode = .always
        inouterCAF.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 35, height: 52))
    }

    @IBAction func sendmcommentVAF(_ sender: UIButton) {
        if sender.tag == 22 {
            self.dismiss(animated: true)
            return
        }
        guard let contetntt = inouterCAF.text,contetntt.count > 0 else {
            SVProgressHUD.showInfo(withStatus: "Your comment content cannot be empty!")
            return
        }
        
        
        SVProgressHUD.show()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0, execute: DispatchWorkItem(block: {
            self.dismiss(animated: true)
            SVProgressHUD.showSuccess(withStatus: "Your comments will be displayed after our approval")
        }))
        
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        bgCommentVAF.layer.cornerRadius = 24
        bgCommentVAF.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        
        
    }
}
