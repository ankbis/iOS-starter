//
//  ViewController.swift
//  iOS-Starter
//
//

import UIKit

class ViewController: UIViewController {
    
    let calculator = Calculator()

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
            let meaning = getMeaning(for: wordToLookup)
            
            // Change the line below to display the meaning of the emoji instead of Hello World
            let alertController = UIAlertController(title: "Meaning", message: meaning, preferredStyle: .alert)
            
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }

    private func getMeaning(for emoji: String) -> String {
        switch emoji {
        case "😀": return String(calculator.add(1, 2))
        case "😷": return String(calculator.multiply(3, 4))
        case "🎂": return "cake"
        case "🍻": return "beer"
        case "➕": return String(calculator.add(2, 3))
        case "✖️": return String(calculator.multiply(4, 5))
        default: return "Unknown emoji"
        }
    }
    
}


