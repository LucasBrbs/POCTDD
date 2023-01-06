//
//  MoneyFormatter.swift
//  POCTDD
//
//  Created by Lucas Barbosa de Oliveira on 06/01/23.
//

import Foundation

struct MoneyFormatter {

    func string(decimal: Decimal) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.minimumFractionDigits = 2
        numberFormatter.roundingMode = .floor
        return numberFormatter.string(from: decimal as NSDecimalNumber) ?? ""

    }

}
