//
//  ViewController.swift
//  3.1.UserDefaultProject
//
//  Created by EMİN ÇETİN on 4.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nottextfield: UITextField!
    @IBOutlet weak var zamantextfield: UITextField!
    @IBOutlet weak var isLabel: UILabel!
    @IBOutlet weak var ZamanLabel: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let KaydedilenNot=UserDefaults.standard.object(forKey: "not")
        let KaydedilenZaman=UserDefaults.standard.object(forKey: "zaman")

        if let gelenNot = KaydedilenNot as? String {
            isLabel.text = "Yapılacak iş: \(gelenNot)"
        }
        
        
        
        if let gelenZaman = KaydedilenZaman as? String {
            ZamanLabel.text = "Yapılacak Zaman: \(gelenZaman)"
        }
        
        
       }
    
    @IBAction func kaydetButton(_ sender: Any) {
        
        UserDefaults.standard.set(nottextfield.text!, forKey: "not")
        UserDefaults.standard.set(zamantextfield.text!, forKey: "zaman")
        
        isLabel.text="Yapılacak iş:\(nottextfield.text!)"
        ZamanLabel.text="Yapılacak Zaman:\(zamantextfield.text!)"
    }
    
    
    @IBAction func silButton(_ sender: Any) {
        
        
        let KaydedilenNot = UserDefaults.standard.object(forKey: "not")
        let KaydedilenZaman=UserDefaults.standard.object(forKey:  "zaman")
        
        
        if (KaydedilenNot as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "not")
            isLabel.text="Yapılacak iş: "
        }
        
        
        if (KaydedilenZaman as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "zaman")
            ZamanLabel.text="Yapılacak Zaman: "
        }
    }
    


}

