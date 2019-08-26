//
//  ViewController.swift
//  Checks
//
//  Created by Hakob Harutyunyan on 23.08.19.
//  Copyright © 2019 Hakob Harutyunyan. All rights reserved.
//

import UIKit
import Firebase


class ReceiptViewController: UIViewController {
    var receiptObject : Receipt = Receipt()

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureScene()
        
        
//        showJSON()
        // Do any additional setup after loading the view.
    }
    
    func configureScene() {
        nameLabel.text = receiptObject.name
        priceLabel.text = receiptObject.price
        amountLabel.text = receiptObject.amount
        totalLabel.text = receiptObject.total
    }
    
//    func showJSON() {
//        let infoDB = Database.database().reference().child("checks-7ea3a")
//
//        print(infoDB.description())
//
//        infoDB.observe(.childAdded) { (snapshot) in
//            print("Observed")
//
//
//
//            let snapshotValue = snapshot.value as! Dictionary<String, String>
//
//            print("Amount:")
//            let a = snapshotValue["AMOUNT"]!
//            let n = snapshotValue["NAME"]!
//            let p = snapshotValue["PRICE"]!
//            let t = snapshotValue["TOTAL"]!
//
//            self.name.text = String(n)
//            self.amount.text = String(a)
//            self.price.text = String(p)
//            self.total.text = String(t)
//
//
//        }
//    }
    
    

}
