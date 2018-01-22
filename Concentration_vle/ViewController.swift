//
//  ViewController.swift
//  Concentration_vle
//
//  Created by Koulutus on 17/01/2018.
//  Copyright © 2018 Vesku L. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0 {
        didSet {
                    FlipCountLabel.text = "Flips: \(flipCount)"
        }
    }
   
    @IBOutlet weak var FlipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emoijChoices = ["👻","👺","👻","👺"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender)  {
            print("cardNumber = \(cardNumber)")
        }   else    {
        print ("chosen card was not in cardButtons")
        }
}
    func flipCard(withEmoji emoji: String, on button: UIButton) {
     
        /*   print("flipCard(withEmoji: \(emoji))") */
        
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        
    }

}

