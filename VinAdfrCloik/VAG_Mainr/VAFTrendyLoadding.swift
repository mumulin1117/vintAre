//
//  VAFTrendyLoadding.swift
//  VinAdfrCloik
//
//  Created by mumu on 2024/11/14.
//

import UIKit

class VAFTrendyLoadding: NSObject {
    static let reasures = VAFTrendyLoadding.init()
 
     var hasAgreenELUAVAf:Bool = false
    
    
    var vafAllShoinglistDauer = Array<Dictionary<String,String>>()
    
    
    var logingVAFIufo = Dictionary<String,String>()
    var cacheVAFHead:UIImage?
    
    var mindVAFClothse = [[String: String]]()
    var mindVAFBottoms = [[String: String]]()
    var mindVAFShoes = [[String: String]]()
    var mindVAFBags = [[String: String]]()
    var mindVAFAccess = [[String: String]]()
    
    var logUsVAFLikes = [[String: String]]()
    var LikelogUsVAFs = [[String: String]]()
    var disLikeloVAFusers = [[String: String]]()
    
    var ifVAFLogEnter:Bool{
        get{
            return UserDefaults.standard.bool(forKey: "iVAFISLogEnter")
        }
        set{
            UserDefaults.standard.set(newValue, forKey: "iVAFISLogEnter")
            if newValue == false {
                logingVAFIufo.removeAll()
                cacheVAFHead = nil
                
                logUsVAFLikes.removeAll()
                LikelogUsVAFs.removeAll()
                disLikeloVAFusers.removeAll()
               
            }
           
        }
    }
    
    func setupGivenVAFUser() {
        logingVAFIufo["vafniame"] = "BiLyu"
        logingVAFIufo["vafHeada"] = "holder_mrtx"
        logingVAFIufo["vafIJID"] = "89676"
        logingVAFIufo["vafmEail"] = "Laauu99@gmail.com"
        logingVAFIufo["vafBornDayh"] = "1997-08-22"
        logingVAFIufo["vafsay"] = "Nothing to say!"
       
        logingVAFIufo["PayidCoin"] = "20"
       
        cacheVAFHead = UIImage(named:"holder_mrtx")
        
        logUsVAFLikes = Array(vafAllShoinglistDauer.shuffled().prefix(1))
        LikelogUsVAFs = Array(vafAllShoinglistDauer.shuffled().prefix(1))
     
    }
    
    override init() {
        super.init()
        
        guard let vafDetaiLujing = Bundle.main.path(forResource: "VAFUserFdaata", ofType: "plist"),
        let getVAFDa = FileManager.default.contents(atPath: vafDetaiLujing) else {
            vafAllShoinglistDauer =  Array<Dictionary<String,String>>()
            return
        }
        if let cdiclistVAF = try? PropertyListSerialization.propertyList(from: getVAFDa, options: [], format: nil) as? [[String: String]]  {
            vafAllShoinglistDauer = cdiclistVAF
        }
        
  
        mindVAFClothse =  vafAllShoinglistDauer.filter { ($0["vafCataryShow"]  == "1") }
        mindVAFBottoms =  vafAllShoinglistDauer.filter { ($0["vafCataryShow"]  == "2") }
        mindVAFShoes =  vafAllShoinglistDauer.filter { ($0["vafCataryShow"]  == "3") }
        mindVAFBags =  vafAllShoinglistDauer.filter { ($0["vafCataryShow"]  == "4") }
        mindVAFAccess =  vafAllShoinglistDauer.filter { ($0["vafCataryShow"]  == "5") }
        
        
        
    }
    

    
    func bloackVAFUser(igFor:[String:String]) {
        
        let onlyID = igFor["vafIJID"] ?? ""
        if disLikeloVAFusers.filter({ ($0["vafIJID"]  == onlyID) }).count == 0{
            self.disLikeloVAFusers.append(igFor)
        }
        
        self.logUsVAFLikes = logUsVAFLikes.filter { !($0["vafIJID"]  == onlyID) }
        
        self.LikelogUsVAFs = LikelogUsVAFs.filter { !($0["vafIJID"]  == onlyID) }
        
        self.mindVAFClothse = mindVAFClothse.filter { !($0["vafIJID"]  == onlyID) }
        
        self.mindVAFBottoms = mindVAFBottoms.filter { !($0["vafIJID"]  == onlyID) }
        
        self.mindVAFBags = mindVAFBags.filter { !($0["vafIJID"]  == onlyID) }
        
        self.mindVAFAccess = mindVAFAccess.filter { !($0["vafIJID"]  == onlyID) }
        self.mindVAFShoes = mindVAFShoes.filter { !($0["vafIJID"]  == onlyID) }
        
        NotificationCenter.default.post(name: NSNotification.Name.init("BlockVAFGUsrs"), object: nil)
    }
    
    
    func renewDYMMeAttitude(ForVAF:Dictionary<String,String>,AttitudeIOPP:Bool)  {
        
        for (wer,vafiuj) in mindVAFClothse.enumerated() {
            if vafiuj ["vafIJID"] == ForVAF ["vafIJID"]{
                mindVAFClothse[wer]["iFlikeThisDYM"] = AttitudeIOPP ? "1" : "0"
                mindVAFClothse[wer]["heartForerDym"] =  AttitudeIOPP ? "\((Int(mindVAFClothse[wer]["heartForerDym"] ?? "0") ?? 0) + 1)" : "\((Int(mindVAFClothse[wer]["heartForerDym"] ?? "0") ?? 0) - 1)"
                
            }
        }
        
        for (wer,vafiuj) in mindVAFBottoms.enumerated() {
            if vafiuj ["vafIJID"] == ForVAF ["vafIJID"]{
                mindVAFBottoms[wer]["iFlikeThisDYM"] = AttitudeIOPP ? "1" : "0"
                mindVAFBottoms[wer]["heartForerDym"] =  AttitudeIOPP ? "\((Int(mindVAFBottoms[wer]["heartForerDym"] ?? "0") ?? 0) + 1)" : "\((Int(mindVAFBottoms[wer]["heartForerDym"] ?? "0") ?? 0) - 1)"
            }
        }
        
        for (wer,vafiuj) in mindVAFShoes.enumerated() {
            if vafiuj ["vafIJID"] == ForVAF ["vafIJID"]{
                mindVAFShoes[wer]["iFlikeThisDYM"] = AttitudeIOPP ? "1" : "0"
                mindVAFShoes[wer]["heartForerDym"] =  AttitudeIOPP ? "\((Int(mindVAFShoes[wer]["heartForerDym"] ?? "0") ?? 0) + 1)" : "\((Int(mindVAFShoes[wer]["heartForerDym"] ?? "0") ?? 0) - 1)"
            }
        }
        
        for (wer,vafiuj) in mindVAFBags.enumerated() {
            if vafiuj ["vafIJID"] == ForVAF ["vafIJID"]{
                mindVAFBags[wer]["iFlikeThisDYM"] = AttitudeIOPP ? "1" : "0"
                mindVAFBags[wer]["heartForerDym"] =  AttitudeIOPP ? "\((Int(mindVAFBags[wer]["heartForerDym"] ?? "0") ?? 0) + 1)" : "\((Int(mindVAFBags[wer]["heartForerDym"] ?? "0") ?? 0) - 1)"
            }
        }
        
        
        for (wer,vafiuj) in mindVAFAccess.enumerated() {
            if vafiuj ["vafIJID"] == ForVAF ["vafIJID"]{
                mindVAFAccess[wer]["iFlikeThisDYM"] = AttitudeIOPP ? "1" : "0"
                mindVAFAccess[wer]["heartForerDym"] =  AttitudeIOPP ? "\((Int(mindVAFAccess[wer]["heartForerDym"] ?? "0") ?? 0) + 1)" : "\((Int(mindVAFAccess[wer]["heartForerDym"] ?? "0") ?? 0) - 1)"
            }
        }
        
        
        
    }
}
