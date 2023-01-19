//
//  ViewControllerTests.swift
//  POCTDDTests
//
//  Created by Lucas Barbosa de Oliveira on 18/01/23.
//

import XCTest
@testable import POCTDD

final class ViewControllerTests: XCTestCase {

    var viewControlller: ViewController!

    override func setUp() {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as? ViewController
        _ = viewController.view
    }

    func testCreatingANewBudgetUpdatesRemainingLabels(){
//        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! ViewController
//        _ = viewController.view
        //on isolated cases

        let textField = viewControlller.totalBudgetTextField!
        textField.text = "100"
        _ = textField.delegate?.textFieldShouldReturn?(textField)

        let budget = viewControlller.budget
        XCTAssertEqual(viewControlller.weeklyRemainingLabel.text, budget?.weeklyRemaining.moneyString)
        XCTAssertEqual(viewControlller.todayRemainingLabel.text, budget?.dailyRemaining.moneyString)

    }
    func testCreatingTransactionUpdatesRemainingLabels(){
        let budget = Budget(total: 70)
        budget.addTransaction(amount: 5, timestamp: Date())

        let textField = viewControlller.totalBudgetTextField!
        textField.text = "70"
        _ = textField.delegate?.textFieldShouldReturn?(textField)

        let textField2 = viewControlller.transactionTextField!
        textField2.text = "5"
        _ = textField2.delegate?.textFieldShouldReturn?(textField2)

        XCTAssertEqual(viewControlller.weeklyRemainingLabel.text, budget.weeklyRemaining.moneyString)
        XCTAssertEqual(viewControlller.todayRemainingLabel.text, budget.dailyRemaining.moneyString)
    }
}
