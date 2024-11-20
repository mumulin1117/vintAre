//
//  VAFAbloutusTernaler.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/19.
//

import UIKit

class VAFAbloutusTernaler: UIViewController {
    private var heooldrome = false
    private var kissdVibe :VAFPOpUiView?
    private var riendly:Double = 52.6
    private var eativity = "[CharacterInt]###VAFPOpUiView###VAFContenReportTernaler".components(separatedBy: "###")
    var interfacetChar: Dictionary<String,Int> =  Dictionary<String,Int>()

    
    @IBOutlet weak var topbgVAFD: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        for char in eativity {
            if char.count > 2 {
                riendly += 3
            }
            
            if riendly > 4000 {
                heooldrome = false
                break
            }
        }
        topbgVAFD.layer.cornerRadius = 24
        topbgVAFD.layer.masksToBounds = true
    }


    @IBAction func fanhuiVAfgu(_ sender: Any) {
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
        self.navigationController?.popViewController(animated: true)
    }
}
