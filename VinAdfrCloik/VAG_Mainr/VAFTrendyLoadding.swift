//
//  VAFTrendyLoadding.swift
//  VinAdfrCloik
//
//  Created by VinAdfrCloik on 2024/11/14.
//

import UIKit

class VAFTrendyLoadding: NSObject {
    static let reasures = VAFTrendyLoadding.init()
 
     var hasAgreenELUAVAf:Bool = false
    var hasSShowELUAVAf:Bool = false
    
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
        logingVAFIufo["vafHeada"] = "vafshowPic113"
        logingVAFIufo["vafIJID"] = "89676"
        logingVAFIufo["vafmEail"] = "Laauu99@gmail.com"
        logingVAFIufo["vafBornDayh"] = "1997-08-22"
        logingVAFIufo["vafsay"] = "Nothing to say!Just Dream big, work hard, stay humble."
       
      
        logingVAFIufo["PayidCoin"] = "20"
        logingVAFIufo["vafshowBrief"] = "The shoulder bag is fashionable and convenient. The vintage shoulder bag has a unique design and a moderate capacity. It can be paired with various outfits to add a touch of fashion to your outing."
        
        logingVAFIufo["vafCataryShow"] = "5"
        logingVAFIufo["vafshowPic"] = "vafshowPic110,vafshowPic111,vafshowPic112,vafshowPic113"
        logingVAFIufo["vafshowYear"] = "1975"
        logingVAFIufo["vafDYMLikeCount"] = "2"
        logingVAFIufo["vafDYMAIComment"] = """
The image displays a vintage brown leather handbag, which stands out against its light-colored backdrop. Crafted from rich, dark brown leather, the handbag exhibits signs of wear and tear, hinting at its history of use and adding to its charm. This aged appearance is a hallmark of vintage fashion, where items are valued not just for their functionality but also for the stories they tell.

The handbag features a zippered pocket, with the golden metal zipper partially visible. This metallic accent adds a touch of elegance to the otherwise minimalist design, creating a visual contrast that draws attention to the bag's detailing. The brown shoulder strap, equipped with metal fittings that connect to the main body, ensures both comfort and durability, allowing the user to carry the handbag with ease.

The overall design of the handbag is both simple and practical, devoid of excessive embellishments. This approach to design resonates with the vintage aesthetic, which often prioritizes functionality and timeless beauty over fleeting trends. The lack of ornate decorations allows the leather's natural texture and color to shine, making the handbag a versatile accessory that can complement a range of outfits.

In the context of vintage fashion, this handbag serves as a stylish and practical companion. Its worn-out look and minimalist design make it an ideal choice for individuals who appreciate the unique charm of vintage items. Whether paired with a classic dress or a pair of relaxed jeans, this handbag is sure to add a touch of vintage elegance to any ensemble.
"""
        
        
       
        cacheVAFHead = UIImage(named:"vafshowPic113")
        
        logUsVAFLikes = Array(vafAllShoinglistDauer.shuffled().prefix(2))
        LikelogUsVAFs = Array(vafAllShoinglistDauer.shuffled().prefix(2))
     
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
