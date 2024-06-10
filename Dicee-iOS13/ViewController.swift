//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - PROPERTIES
    // IBoutlets allows me to reference  UI element >> when we want to change them through code
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 1
    var rightDiceNumber = 5
    
    // MARK: - FUNCTIONS
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // IBAction is where we put what will happen whe the UI element got an interaction
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let dices = [ UIImage(named: "DiceOne"),
                      UIImage(named: "DiceTwo"),
                      UIImage(named: "DiceThree"),
                      UIImage(named: "DiceFour"),
                      UIImage(named: "DiceFive"),
                      UIImage(named: "DiceSix")
        ]
        diceImageView1.image = dices[leftDiceNumber]
        diceImageView2.image = dices[rightDiceNumber] 
        
        leftDiceNumber += 1
        rightDiceNumber -= 1
    }
    
}

