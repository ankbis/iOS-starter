//
//  ViewController.swift
//  iOS-Starter
//
//  Created by Ranjodh Singh on 5/23/20.
//  Copyright © 2020 Ranjodh Singh. All rights reserved.
//

import UIKit

import Foundation
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton) {
        
        // The sender is the button that is tapped by the user.
        // Here we store the sender in the selectedButton constant
        let selectedButton = sender
        
        // Get the emoji from the title label of the selected button
        if let wordToLookup = selectedButton.titleLabel?.text {
            
            // Get the meaning of the emoji from the dictionary
            var emojis = ["😀": "laugh",
                          "😷": "corona",
                           "🐖": "rahul",
                           "🎂": "cake",
                           "🍻": "beer"
            ]
            
             let calculator = Calculator()
            // Change the line below to display the meaning of the emoji instead of Hello World
             let laughMeaning = calculator.add(1, 1)
             let coronaMeaning = calculator.multiply(2, 2)
             let alertController = UIAlertController(title: "Meaning", message: "\(laughMeaning), \(coronaMeaning), \(emojis[wordToLookup]!)", preferredStyle: UIAlertController.Style.alert)
            
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }

}

