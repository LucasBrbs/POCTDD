//
//  POCTDDTests.swift
//  POCTDDTests
//
//  Created by Lucas Barbosa de Oliveira on 05/01/23.
//

import XCTest
@testable import POCTDD

final class POCTDDTests: XCTestCase {

    let formatter = MoneyFormatter()

    func testMoneyFormatterWholeNumber(){
        XCTAssertEqual(formatter.string(decimal: Decimal(string : "0")!), "0,00")
        XCTAssertEqual(formatter.string(decimal: Decimal(string : "1")!), "1,00")
    }

    func testMoneyFormatterDecimalNumberWithOneDecimalPlace() {
        XCTAssertEqual(formatter.string(decimal: Decimal(string : "1.1")!), "1,10")
    }

    func testMoneyFormatterDecimalNumberWithTwoDecimalPlace() {
        XCTAssertEqual(formatter.string(decimal: Decimal(string : "1.11")!), "1,11")
    }

    func testMoneyFormatterDecimalNumberWithAnyDecimalPlace() {
        XCTAssertEqual(formatter.string(decimal: Decimal(string : "1.111")!), "1,11")
    }
}
