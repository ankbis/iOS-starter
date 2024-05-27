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
                          "😷": String(Calculator().add(a: 2, b: 3)),
                          "🐖": String(Calculator().multiply(a: 3, b: 2)),
                          "🎂": String(Calculator().add(a: 5, b: 7)),
                          "🍻": String(Calculator().multiply(a: 4, b: 5))
            ]

            let calculator = Calculator()
            let result = calculator.add(a: 2, b: 3)
            
            // Change the line below to display the meaning of the emoji instead of Hello World
            let alertController = UIAlertController(title: "Meaning", message:  emojis[wordToLookup], preferredStyle: UIAlertController.Style.alert)
            
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }

}

