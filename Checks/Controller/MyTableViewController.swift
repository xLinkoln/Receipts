//
//  MyTableViewController.swift
//  Checks
//
//  Created by Hakob Harutyunyan on 23.08.19.
//  Copyright © 2019 Hakob Harutyunyan. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    var receiptDatabase = FirebaseDB()
    var receiptRowNumber = 0
    

    //for tableview entries' names
    var iterator : Int = 0

    @IBAction func refreshButtonPressed(_ sender: Any) {
        iterator = 0
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if receiptDatabase.receipts.count > 2 {
        print("Receipt 1: \(receiptDatabase.receipts[0].amount)")
        print("Receipt 2: \(receiptDatabase.receipts[1].amount)")
        }
        
//        receiptDatabase.startCheckingFirebase()
        
    }

    // MARK: - Table view data source
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print("Receipts array in tv: \(receiptDatabase.receipts.count)")

        return receiptDatabase.receipts.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "receiptCell", for: indexPath)

        // Configure the cell...
        iterator = iterator + 1
        cell.textLabel?.text = "Receipt \(iterator)"
        
//        let receipt = receiptDatabase.receipts[indexPath.row]
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        receiptRowNumber = indexPath.row
        performSegue(withIdentifier: "toReceiptSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //xz nuzhno ili net
        
        if segue.identifier == "toReceiptSegue" {
            let destinationVC = segue.destination as! ReceiptViewController
            
            destinationVC.receiptObject = receiptDatabase.receipts[receiptRowNumber]
            
            print("prepare receiptOBJ: \(receiptDatabase.receipts[receiptRowNumber].amount)")
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
