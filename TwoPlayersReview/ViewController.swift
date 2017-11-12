//
//  ViewController.swift
//  TwoPlayersReview
//
//  Created by John Gallaugher on 11/12/17.
//  Copyright © 2017 John Gallaugher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playerOneLabel: UILabel!
    @IBOutlet weak var playerTwoLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    var playersEntered = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.becomeFirstResponder()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! BeginViewController
        destination.playerOne = playerOneLabel.text!
        destination.playerTwo = playerTwoLabel.text!
    }
    
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        
        if playersEntered == 0 {
            playerOneLabel.text = "Player 1: " + nameTextField.text!
            playersEntered += 1
            nameTextField.text = ""
        } else {
            playerTwoLabel.text = "Player 2:" + nameTextField.text!
            nameTextField.text = ""
            performSegue(withIdentifier: "BeginSegue", sender: nil)
        }
        
    }
    

}

