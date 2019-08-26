//
//  Receipt.swift
//  Checks
//
//  Created by Hakob Harutyunyan on 26.08.19.
//  Copyright © 2019 Hakob Harutyunyan. All rights reserved.
//

import Foundation

class Receipt {
    var name : String
    var price : String
    var amount : String
    var total : String
    
    init() {
        name = "Empty"
        price = "Empty"
        amount = "Empty"
        total = "Empty"
    }
    init(productName : String, productPrice : String, productAmount : String, productTotal : String) {
        name = productName
        price = productPrice
        amount = productAmount
        total = productTotal
    }
}
