//
//  ViewController.swift
//  FizzBuzz Game
//
//  Created by Niamh Power on 07/10/2017.
//  Copyright © 2017 Niamh Power. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fizzBuzzLabel: UILabel!
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!

    var currentNumber: Int = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = .gray
        // Do any additional setup after loading the view, typically from a nib.
        fizzBuzzLabel.text = "3 / 5"
        numberButton.setTitle("\(currentNumber)", for: .normal)
    }

    @IBAction func numberButtonPressed(_ sender: Any) {
        if (currentNumber % 3 == 0) {
            return
        }

        if (currentNumber % 5 == 0) {
            return
        }

        if (currentNumber % 15 == 0) {
            return
        }

        currentNumber += 1
        numberButton.setTitle("\(currentNumber)", for: .normal)
    }

    @IBAction func fizzButtonPressed(_ sender: Any) {
        if (currentNumber % 3 == 0) {
            if(currentNumber % 5 != 0) {
                currentNumber += 1
                numberButton.setTitle("\(currentNumber)", for: .normal)
            }
        }
    }

    @IBAction func buzzButtonPressed(_ sender: Any) {
        if (currentNumber % 5 == 0) {
            if(currentNumber % 3 != 0) {
                currentNumber += 1
                numberButton.setTitle("\(currentNumber)", for: .normal)
            }
        }
    }

    @IBAction func fizzBuzzButtonPressed(_ sender: Any) {
        if (currentNumber % 15 == 0) {
            currentNumber += 1
            numberButton.setTitle("\(currentNumber)", for: .normal)
        }
    }

    @IBAction func playAgainButtonPressed(_ sender: Any) {
        currentNumber = 1
        numberButton.setTitle("\(currentNumber)", for: .normal)
    }
}

