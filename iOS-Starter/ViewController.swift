//
//  ViewController.swift
//  iOS-Starter
//
//  Created by Ranjodh Singh on 5/23/20.
//  Copyright © 2020 Ranjodh Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let calculator = Calculator()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton) {
        guard let wordToLookup = sender.titleLabel?.text,
              let operation = emojis[wordToLookup] else {
            return
        }

        switch operation {
        case "add", "subtract", "multiply", "divide":
            let a = 10.0
            let b = 5.0
            showCalculatorResult(operation: operation, a: a, b: b)
        default:
            showMeaningAlert(for: wordToLookup)
        }
    }

    private func showMeaningAlert(for wordToLookup: String) {
        
        // The sender is the button that is tapped by the user.
        // Here we store the sender in the selectedButton constant
        let selectedButton = sender
        
        // Get the emoji from the title label of the selected button
        if let wordToLookup = selectedButton.titleLabel?.text {
            
            // Get the meaning of the emoji from the dictionary
            let emojis = ["😀": "laugh",
                          "😷": "corona",
                          "🐖":"rahul",
                          "🎂":"cake",
                       "🍻":"beer",
                       "➕":"add",
                       "➖":"subtract",
                       "✖️":"multiply",
                       "➗":"divide"]

    private func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
            ]
            
            // Change the line below to display the meaning of the emoji instead of Hello World
            let alertController = UIAlertController(title: "Meaning", message:  emojis[wordToLookup], preferredStyle: UIAlertController.Style.alert)
            
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }

    private func showCalculatorResult(operation: String, a: Double, b: Double) {
        let result: Double
        do {
            switch operation {
            case "add": result = try calculator.add(a: a, b: b)
            case "subtract": result = try calculator.subtract(a: a, b: b)
            case "multiply": result = try calculator.multiply(a: a, b: b)
            case "divide": result = try calculator.divide(a: a, b: b)
            default: fatalError("Invalid operation")
            }
            let alertController = UIAlertController(title: "Result", message: "\(a) \(operation) \(b) = \(result)", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertController, animated: true, completion: nil)
        } catch {
            showAlert(title: "Error", message: error.localizedDescription)
        }
    }

}

