//
//  StartingScreenController.swift
//  Checks
//
//  Created by Hakob Harutyunyan on 26.08.19.
//  Copyright © 2019 Hakob Harutyunyan. All rights reserved.
//

import UIKit

class StartingScreenController: UIViewController {
    var receiptDatabase = FirebaseDB()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        receiptDatabase.startCheckingFirebase()
        

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! MyTableViewController
        
        destinationVC.receiptDatabase = self.receiptDatabase
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
