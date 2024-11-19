//
//  VAFAbloutusTernaler.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/19.
//

import UIKit

class VAFAbloutusTernaler: UIViewController {
    @IBOutlet weak var topbgVAFD: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        topbgVAFD.layer.cornerRadius = 24
        topbgVAFD.layer.masksToBounds = true
    }


    @IBAction func fanhuiVAfgu(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
