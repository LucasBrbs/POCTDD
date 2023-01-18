//
//  Budget.swift
//  POCTDD
//
//  Created by Lucas Barbosa de Oliveira on 09/01/23.
//

import Foundation

class Budget {

    var weeklyRemaining: Decimal {
        return _weeklyRemaining
    }
    var dailyRemaining: Decimal {
        return _dailyRemaining
    }
    private var _weeklyRemaining: Decimal
    private var _dailyRemaining: Decimal

    init(total:Decimal){
        _weeklyRemaining = total
        _dailyRemaining = total/7
    }

    func addTransaction(amount: Decimal, timestamp: Date){
        _weeklyRemaining -= amount
        _dailyRemaining -= amount
    }
}
