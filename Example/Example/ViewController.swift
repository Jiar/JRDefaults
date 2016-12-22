//
//  ViewController.swift
//  Example
//
//  Created by Jiar on 16/12/22.
//  Copyright © 2016年 Jiar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contentText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0 ..< 100 {
            Account.set("test: \(i)", forKey: .none)
            if let test = Account.string(forKey: .none) {
                print(test)
            }
        }
        
        Account.set(1, forKey: .id)
        Account.set("Jiar", forKey: .name)
        Account.set("157********", forKey: .phone)
        Account.set("jiar@jiar.vip", forKey: .email)
        let familyRelations = ["father": "Romeo", "mother": "Juliet"]
        Account.set(familyRelations, forKey: .familyRelations)
        let schools = ["University of Oxford", "Harvard University", "Massachusetts Institute of Technology", "Stanford University官网"]
        Account.set(schools, forKey: .schools)
        Account.set(99999999.99, forKey: .money)
        Account.set(false, forKey: .single)
        Account.set(URL(string: "https://github.com/Jiar")!, forKey: .accountUrl)
        
//        let contentStr =
//            "\n\n\n\n" +
//            "id : \(Account.integer(forKey: .id)) \n\n" +
//            "name : \(Account.string(forKey: .name)!) \n\n" +
//            "phone : \(Account.string(forKey: .phone)!) \n\n" +
//            "email : \(Account.string(forKey: .email)!) \n\n" +
//            "familyRelations : \(Account.dictionary(forKey: .familyRelations)!) \n\n" +
//            "schools : \(Account.stringArray(forKey: .schools)!) \n\n" +
//            "money : \(Account.double(forKey: .money)) \n\n" +
//            "single : \(Account.bool(forKey: .single)) \n\n" +
//            "accountUrl : \(Account.url(forKey: .accountUrl)!) \n\n" +
//            "\n\n\n\n"
        
        guard let name = Account.string(forKey: .name), let phone = Account.string(forKey: .phone), let email = Account.string(forKey: .email), let familyRelations2 = Account.dictionary(forKey: .familyRelations), let schools2 = Account.stringArray(forKey: .schools), let accountUrl = Account.url(forKey: .accountUrl) else {
            contentText.text = "\n\n\n\n Somethings Error !"
            return
        }
        let contentStr =
            "\n\n\n\n" +
            "id : \(Account.integer(forKey: .id)) \n\n" +
            "name : \(name) \n\n" +
            "phone : \(phone) \n\n" +
            "email : \(email) \n\n" +
            "familyRelations : \(familyRelations2) \n\n" +
            "schools : \(schools2) \n\n" +
            "money : \(Account.double(forKey: .money)) \n\n" +
            "single : \(Account.bool(forKey: .single)) \n\n" +
            "accountUrl : \(accountUrl) \n\n" +
            "\n\n\n\n"
        
        contentText.text = contentStr
        
    }


}

