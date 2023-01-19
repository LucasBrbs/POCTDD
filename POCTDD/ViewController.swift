//
//  ViewController.swift
//  POCTDD
//
//  Created by Lucas Barbosa de Oliveira on 05/01/23.
//
// Learning and documentation of TDD (Test Drive Devolopment)
// the TDD method begins with the test before the code  going against the pattern

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var todayRemainingLabel: UILabel!
    @IBOutlet weak var weeklyRemainingLabel: UILabel!
    @IBOutlet weak var transactionTextField: UITextField!
    @IBOutlet weak var totalBudgetTextField: UITextField!

    var budget:Budget?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    private func updateBudgetLabels(){
        weeklyRemainingLabel.text = budget?.weeklyRemaining.moneyString
        todayRemainingLabel.text = budget?.dailyRemaining.moneyString
    }
}

extension ViewController:UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let total = Decimal(string: textField.text!) else {
            return true
        }

        if textField == totalBudgetTextField {
            budget = Budget(total: total )
//            weeklyRemainingLabel.text = budget?.weeklyRemaining.moneyString
//            todayRemainingLabel.text = budget?.dailyRemaining.moneyString
        }

        if textField == transactionTextField {
            budget?.addTransaction(amount: total, timestamp: Date())
//            weeklyRemainingLabel.text = budget?.weeklyRemaining.moneyString
//            todayRemainingLabel.text = budget?.dailyRemaining.moneyString
        }
        updateBudgetLabels()
        //with this function is no more necessary the repetition in this previuos lines of code 
        return true
    }
}

