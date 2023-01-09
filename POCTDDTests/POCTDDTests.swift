//
//  POCTDDTests.swift
//  POCTDDTests
//
//  Created by Lucas Barbosa de Oliveira on 05/01/23.
//

import XCTest
@testable import POCTDD

final class POCTDDTests: XCTestCase {

//    let formatter = MoneyFormatter()

    func testMoneyFormatterWholeNumber(){
        XCTAssertEqual(Decimal(string : "0")?.moneyString, "0,00")
//        XCTAssertEqual(formatter.string(decimal: Decimal(string : "1")!), "1,00")
    }

    func testMoneyFormatterDecimalNumberWithOneDecimalPlace() {
        XCTAssertEqual(Decimal(string : "1.1")?.moneyString, "1,10")
//        XCTAssertEqual(formatter.string(decimal: Decimal(string : "1.1")!), "1,10")
    }

    func testMoneyFormatterDecimalNumberWithTwoDecimalPlace() {
        XCTAssertEqual(Decimal(string : "1.11")?.moneyString, "1,11")
//        XCTAssertEqual(formatter.string(decimal: Decimal(string : "1.11")!), "1,11")
    }

    func testMoneyFormatterDecimalNumberWithAnyDecimalPlace() {
        XCTAssertEqual(Decimal(string : "1.111")?.moneyString, "1,11")
//        XCTAssertEqual(formatter.string(decimal: Decimal(string : "1.111")!), "1,11")
    }

//    let structChamada = dobrarStruct()
//
//    func testdobrarTeste(){
//        XCTAssertEqual(structChamada.dobrar(a: Int(2)), 4)
//        XCTAssertEqual(structChamada.dobrar(a: Int(4)), 8)
//        XCTAssertEqual(structChamada.dobrar(a: Int(6)), 12)
//        XCTAssertEqual(structChamada.dobrar(a: Int(10)), 20)
//    }
//
//    let tdd = tddStruct()
//    func testDiminuirPor2(){
//        XCTAssertEqual(tdd.diminuir2(b:Int(3)), 1)
//    }
}
