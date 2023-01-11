//
//  Budget.swift
//  POCTDD
//
//  Created by Lucas Barbosa de Oliveira on 09/01/23.
//

import Foundation

class Budget {

    var  weeklyRemaining: Decimal
    let dailyRemaining: Decimal

    init(total:Decimal){
        weeklyRemaining = total
        dailyRemaining = total/7
    }

    func addTransaction(amount: Decimal, timestamp: Date){
        weeklyRemaining -= amount
    }
}
