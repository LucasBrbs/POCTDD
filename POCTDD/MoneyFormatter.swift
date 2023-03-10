//
//  MoneyFormatter.swift
//  POCTDD
//
//  Created by Lucas Barbosa de Oliveira on 06/01/23.
//

import Foundation

extension Decimal {

    var moneyString: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.minimumFractionDigits = 2
        numberFormatter.roundingMode = .floor
//        return numberFormatter.string(from: decimal as NSDecimalNumber) ?? ""
        return numberFormatter.string(from: self as NSDecimalNumber) ?? ""

    }

}




//struct MoneyFormatter {
//
//    func string(decimal: Decimal) -> String {
//        let numberFormatter = NumberFormatter()
//        numberFormatter.minimumFractionDigits = 2
//        numberFormatter.roundingMode = .floor
//        return numberFormatter.string(from: decimal as NSDecimalNumber) ?? ""
//
//    }
//
//}


//struct dobrarStruct {
//    func dobrar(a:Int) -> Int {
//        return a*2
//    }
//}
//
//
//struct tddStruct {
//    func diminuir2(b:Int) ->Int{
//        return b-2
//    }
//}

