//
//  BudgetTests.swift
//  POCTDDTests
//
//  Created by Lucas Barbosa de Oliveira on 09/01/23.
//

import XCTest
@testable import POCTDD


final class BudgetTests: XCTestCase {

    func testBudgetContainsWeeklyRemaining() {
        let amounts: [Decimal] = [1,2,3,123]
        amounts.forEach{ amount in
            let budget = Budget(total: amount)
            XCTAssertEqual(budget.weeklyRemaining, amount)
        }

    }
    
    func testBudgetContainsDailyRemaining() {

    }
    func testTransactionDeductsFromWeeklyRemaining() {

    }
    func testTransactionDeductsFromDailyRemaining() {

    }
}
