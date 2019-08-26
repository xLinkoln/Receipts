//
//  FirebaseDB.swift
//  Checks
//
//  Created by Hakob Harutyunyan on 26.08.19.
//  Copyright © 2019 Hakob Harutyunyan. All rights reserved.
//

import Foundation
import Firebase

class FirebaseDB {
    var receipts = [Receipt]()
    
    func startCheckingFirebase() {
        print("Started Checking Firebase")
        
        let infoDB = Database.database().reference().child("checks-7ea3a")
        
        print(infoDB.description())
        
        infoDB.observe(.childAdded) { (snapshot) in
            print("Observed")
            
            let snapshotValue = snapshot.value as! Dictionary<String, String>
            
            let newReceipt = Receipt(productName: snapshotValue["NAME"]!, productPrice: snapshotValue["PRICE"]!, productAmount: snapshotValue["AMOUNT"]!, productTotal: snapshotValue["TOTAL"]!)
            
            self.receipts.append(newReceipt)
            print("Receipts array: \(self.receipts.count)")
        }
    }
}
